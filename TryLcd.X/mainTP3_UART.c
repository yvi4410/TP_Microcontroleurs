#include "configbits.h" // Bits de configuration
#include <xc.h>

#define _XTAL_FREQ 8000000 // Frequence de l'oscillateur en Hertz

void UART_SendChar(char c) {
    while(!TX1STAbits.TRMT); // Attendre que l'UART soit prêt à envoyer
    TX1REG = c;  // Envoyer un caractère
}

void UART_SendString(char* str) {
    while(str) {
        UART_SendChar(str);
        str++;
    }
}

void setupUART() {
    RC6PPS = 0x14;  // RC6 ? TX1 (TX du module EUSART)
    RXPPS  = 0x17;  // RC7 ? RX1 (RX du module EUSART)
    
    TRISCbits.TRISC6 = 0;  // RC6 en sortie (TX)
    TRISCbits.TRISC7 = 1;  // RC7 en entrée (RX)

    ANSELCbits.ANSC6 = 0;  // Désactiver mode analogique sur RC6
    ANSELCbits.ANSC7 = 0;  // Désactiver mode analogique sur RC7

    TX1STAbits.SYNC = 0;   // Mode Asynchrone
    TX1STAbits.BRGH = 1;   // Baud Rate High Speed
    BAUD1CONbits.BRG16 = 0; // Utilisation de SP1BRGL uniquement

    SP1BRGL = 12;  // Calculé pour 9600 bauds avec Fosc = 8MHz TODO a changer pcq pas sur

    RC1STAbits.SPEN = 1;  // Activer le module UART
    TX1STAbits.TXEN = 1;  // Activer la transmission
    RC1STAbits.CREN = 1;  // Activer la réception continue

}


// Fonction principale
void main(void) {
    // Configuration UART
    setupUART();

    while(1) {
        UART_SendString("Hello, World!\n\r");
        __delay_ms(1000);
    }
}