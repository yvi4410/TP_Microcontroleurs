#include "configbits.h"    
#include <xc.h>
#include <stdio.h>
#include <string.h>
#include "lcd.h"           

#define _XTAL_FREQ 8000000UL  
#define ALPHABET "0123456789abcdefghijklmnopqrstuvwxyz"
#define ALPHABET_SIZE 36

#define BUFFER_SIZE 64  // Taille du buffer circulaire
volatile char rxBuffer[BUFFER_SIZE];
volatile unsigned char rxHead = 0, rxTail = 0;
volatile unsigned char txReady = 1;  // Indique si la transmission UART est prête
volatile unsigned char mode = 0;  // 0 = Chiffrement, 1 = Déchiffrement

/* ------------------ ADC (Potentiomètre) ------------------ */
void setupADC(void) {
    TRISAbits.TRISA0 = 1;      
    ANSELAbits.ANSA0 = 1;      
    ADCON1bits.ADFM = 1;       
    ADCON1bits.ADCS = 0b110;   
    ADCON1bits.ADNREF = 0;     
    ADCON1bits.ADPREF = 0b00;  
    ADCON0bits.ADON = 1;       
}

unsigned int readADC(void) {
    ADCON0bits.CHS = 0b00000;  
    __delay_us(5);             
    ADCON0bits.GO = 1;         
    while (ADCON0bits.GO);     
    return ((ADRESH << 8) + ADRESL); 
}

/* ------------------ UART avec interruptions ------------------ */
void setupUART(void) {
    RC6PPS = 0x14;         
    RXPPS  = 0x17;         
    TRISCbits.TRISC6 = 0;  
    TRISCbits.TRISC7 = 1;  
    ANSELCbits.ANSC6 = 0;  
    ANSELCbits.ANSC7 = 0;  
    TX1STAbits.SYNC = 0;   
    TX1STAbits.BRGH = 1;   
    BAUD1CONbits.BRG16 = 0;
    SP1BRGL = 51;          
    RC1STAbits.SPEN = 1;   
    TX1STAbits.TXEN = 1;   
    RC1STAbits.CREN = 1;   

    PIE1bits.RCIE = 1;    
    PIE1bits.TXIE = 0;    
    INTCONbits.PEIE = 1;  
    INTCONbits.GIE = 1;   
}

void UART_SendChar(char c) {
    while (!txReady);  
    TX1REG = c;
    txReady = 0;  
}

/* ------------------ Bouton de mode ------------------ */
void setupButton(void) {
    TRISBbits.TRISB0 = 1;   
    ANSELBbits.ANSB0 = 0;   
}

/* ------------------ Interruptions ------------------ */
void __interrupt() ISR(void) {
    if (PIR1bits.RCIF) {  
        if (RC1STAbits.OERR) {  
            RC1STAbits.CREN = 0;
            RC1STAbits.CREN = 1;
        }
        char received = RCREG;
        
        if ((received >= 'A') && (received <= 'Z')) {
            received += ('a' - 'A');  
        }

        if (strchr(ALPHABET, received)) {  
            rxBuffer[rxHead] = received;  
            rxHead = (rxHead + 1) % BUFFER_SIZE;
        }
    }

    if (PIR1bits.TXIF) {  
        txReady = 1;  
        PIE1bits.TXIE = 0;  
    }
}

/* ------------------ Programme Principal ------------------ */
void main(void) {
    setupADC();
    setupUART();
    setupButton();
    LCD_InitializePins();
    LCD_Initialize();
    LCD_Clear();

    unsigned int adc_value;
    unsigned char offset;
    char lcd_buffer[16];
    unsigned char lastButtonState = 1;

    while (1) {
        adc_value = readADC();
        offset = (adc_value * ALPHABET_SIZE) / 1024;

        sprintf(lcd_buffer, "Offset: %2d   ", offset);
        LCD_GoTo(0, 0);
        LCD_WriteString(lcd_buffer);

        LCD_GoTo(1, 0);
        LCD_WriteString(mode == 0 ? "Mode: ENC     " : "Mode: DEC     ");

        if ((PORTBbits.RB0 == 0) && (lastButtonState == 1)) {
            __delay_ms(50);
            if (PORTBbits.RB0 == 0) {
                mode = !mode;
            }
        }
        lastButtonState = PORTBbits.RB0;

        if (rxHead != rxTail) {  
            char c = rxBuffer[rxTail];  
            rxTail = (rxTail + 1) % BUFFER_SIZE;

            char *ptr = strchr(ALPHABET, c);
            if (ptr) {
                int index = (int)(ptr - ALPHABET);
                int new_index = mode == 0 ? (index + offset) % ALPHABET_SIZE
                                          : (index - offset + ALPHABET_SIZE) % ALPHABET_SIZE;
                char processed = ALPHABET[new_index];

                UART_SendChar(processed);  
            }
        }

        __delay_ms(10);  
    }
}