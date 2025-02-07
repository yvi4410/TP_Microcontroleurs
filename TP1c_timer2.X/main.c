#include "configbits.h" // Bits de configuration
#include <xc.h>


void delay_interrupt(int times) {
    for (int i = 0; i < times; i++) {
        while (!PIR1bits.TMR2IF); // Attendre l'interruption Timer2
        PIR1bits.TMR2IF = 0; // Réinitialiser le flag d'interruption
    }
}

void main(void) {

    // Configuration des ports pour les LEDs
    TRISDbits.TRISD0 = 0; // Configure le bit 0 de TRISD en sortie
    TRISDbits.TRISD1 = 0; // Configure le bit 1 de TRISD en sortie
    TRISDbits.TRISD2 = 0; // Configure le bit 2 de TRISD en sortie
    TRISDbits.TRISD3 = 0; // Configure le bit 3 de TRISD en sortie
    TRISBbits.TRISB0 = 0; // Configure le bit 0 de TRISB en sortie
    TRISBbits.TRISB1 = 0; // Configure le bit 1 de TRISB en sortie
    TRISBbits.TRISB2 = 0; // Configure le bit 2 de TRISB en sortie
    TRISBbits.TRISB3 = 0; // Configure le bit 3 de TRISB en sortie
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
    PR2 = 124;           // Définit la période (ajuste la vitesse), c est la valeur maximale du TMR2
    TMR2 = 0; // on met le timer a 0 au début

    // Activation des interruptions
    PIE1bits.TMR2IE = 1; // Activer l'interruption Timer2
    INTCONbits.PEIE = 1; // Activer les interruptions périphériques
    INTCONbits.GIE = 1;  // Activer les interruptions globales

    while(1) {
        delay_interrupt(1000);
        LATD = 0x01;  // Allumer LED 0
        LATB = 0x00;  
        
        delay_interrupt(1000);
        LATD = 0x02;  // Allumer LED 1
        LATB = 0x00;
        
        delay_interrupt(1000);
        LATD = 0x04;  // Allumer LED 2
        LATB = 0x00;
        
        delay_interrupt(1000);
        LATD = 0x08;  // Allumer LED 3
        LATB = 0x00;
        
        delay_interrupt(1000);
        LATD = 0x00;  // Éteindre PORTD
        LATB = 0x01;  // Allumer LED 0 sur PORTB
        
        delay_interrupt(1000);
        LATD = 0x00;
        LATB = 0x02;  // Allumer LED 1 sur PORTB
        
        delay_interrupt(1000);
        LATD = 0x00;
        LATB = 0x04;  // Allumer LED 2 sur PORTB
        
        delay_interrupt(1000);
        LATD = 0x00;
        LATB = 0x08;  // Allumer LED 3 sur PORTB
    }
}