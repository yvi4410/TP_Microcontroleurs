#include "configbits.h" // Bits de configuration
#include <xc.h>

volatile unsigned char led_state = 0x01; // Variable pour suivre l'état des LEDs

void __interrupt() isr(void) {
    static unsigned char led_position = 0; // Utilisation d'une variable pour suivre la position de la LED

    if (PIR1bits.TMR2IF) { // Vérifier si l'interruption Timer2 est déclenchée
        PIR1bits.TMR2IF = 0; // Réinitialiser le flag d'interruption

        // Mise à jour des LEDs en fonction de la position
        if (led_position == 0) {
            LATD = 0x01;  // Allumer la première LED sur PORTD
            LATB = 0x00;  // Éteindre PORTB
        } else if (led_position == 1) {
            LATD = 0x02;  // Allumer la deuxième LED sur PORTD
            LATB = 0x00;
        } else if (led_position == 2) {
            LATD = 0x04;  // Allumer la troisième LED sur PORTD
            LATB = 0x00;
        } else if (led_position == 3) {
            LATD = 0x08;  // Allumer la quatrième LED sur PORTD
            LATB = 0x00;
        } else if (led_position == 4) {
            LATD = 0x00;  // Éteindre PORTD
            LATB = 0x01;  // Allumer la première LED sur PORTB
        } else if (led_position == 5) {
            LATD = 0x00;  // Éteindre PORTD
            LATB = 0x02;  // Allumer la deuxième LED sur PORTB
        } else if (led_position == 6) {
            LATD = 0x00;  // Éteindre PORTD
            LATB = 0x04;  // Allumer la troisième LED sur PORTB
        } else if (led_position == 7) {
            LATD = 0x00;  // Éteindre PORTD
            LATB = 0x08;  // Allumer la quatrième LED sur PORTB
        }

        // Passer à la LED suivante
        led_position++;
        if (led_position > 7) {
            led_position = 0; // Revenir à la première LED après la dernière
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
    PR2 = 124;           // Définit la période
    TMR2 = 0;            // Initialiser le Timer2 à 0

    // Activation des interruptions
    PIE1bits.TMR2IE = 1; // Activer l'interruption Timer2
    INTCONbits.PEIE = 1; // Activer les interruptions périphériques
    INTCONbits.GIE = 1;  // Activer les interruptions globales

    while(1) {
        // Boucle infinie vide, tout est géré par l'interruption
    }
}