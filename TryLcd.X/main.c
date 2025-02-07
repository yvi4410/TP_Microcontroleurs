#include "configbits.h" // Bits de configuration
#include <xc.h>

volatile unsigned char led_state = 0x01; // Variable pour suivre l'�tat des LEDs

void __interrupt() isr(void) {
    if (PIR1bits.TMR2IF) { // V�rifier si l'interruption Timer2 est d�clench�e
        PIR1bits.TMR2IF = 0; // R�initialiser le flag d'interruption
        
        // Mise � jour des LEDs
        LATD = (led_state & 0x0F); // Appliquer aux 4 premi�res LEDs (PORTD)
        LATB = (led_state >> 4);   // Appliquer aux 4 derni�res LEDs (PORTB)
        
        // D�calage du chenillard
        led_state <<= 1;
        if (led_state == 0x10) { // Revenir � la premi�re LED apr�s les 4 de PORTD
            led_state = 0x01;
        } else if (led_state == 0x00) { // Revenir � la premi�re LED apr�s les 4 de PORTB
            led_state = 0x10;
        }
    }
}

void main(void) {
    
    // Configuration des ports pour les LEDs
    TRISDbits.TRISD0 = 0;
    TRISDbits.TRISD1 = 0;
    TRISDbits.TRISD2 = 0;
    TRISDbits.TRISD3 = 0;
    TRISBbits.TRISB0 = 0;
    TRISBbits.TRISB1 = 0;
    TRISBbits.TRISB2 = 0;
    TRISBbits.TRISB3 = 0;
    LATBbits.LATB0 = 0;
    LATBbits.LATB1 = 0;
    LATBbits.LATB2 = 0;
    LATBbits.LATB3 = 0;
    LATDbits.LATD0 = 0;
    LATDbits.LATD1 = 0;
    LATDbits.LATD2 = 0;
    LATDbits.LATD3 = 0;

    // T2CON configuration, initialisation du Timer2
    T2CON = 0b00000110;  // T2OUTPS = 1:1, TMR2ON = 1, T2CKPS = 1:16
    PR2 = 124;           // D�finit la p�riode
    TMR2 = 0;            // Initialiser le Timer2 � 0

    // Activation des interruptions
    PIE1bits.TMR2IE = 1; // Activer l'interruption Timer2
    INTCONbits.PEIE = 1; // Activer les interruptions p�riph�riques
    INTCONbits.GIE = 1;  // Activer les interruptions globales

    while(1) {
        // Boucle infinie vide, tout est g�r� par l'interruption
    }
}