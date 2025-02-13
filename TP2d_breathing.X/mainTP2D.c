#include "configbits.h" // Bits de configuration
#include <xc.h>

#define _XTAL_FREQ 8000000 // Frequence de l'oscillateur en Hertz

volatile unsigned int level = 0; // Niveau de luminosit� (0-255)
volatile unsigned int direction = 1; // Direction de variation (1 = augmenter, 0 = diminuer)
volatile unsigned int interruptCounter = 0; // Compteur d'interruptions

// Fonction pour ajuster le duty cycle du PWM pour la LED D1
void updatePWM() {
    // Mettre � jour le duty cycle du PWM pour la LED D1
    PWM4DCH = level >> 2;      // 8 bits de poids fort
    PWM4DCL = (level & 0x03) << 6; // 2 bits de poids faible dans les bits 7:6
}

// Configuration du PWM sur RD0 via PWM4
void setupPWM() {
    // 1. Configurer RD0 en sortie (pour la LED D1)
    TRISDbits.TRISD0 = 0;
    LATDbits.LATD0 = 0;    // Assurer que la LED est bien contr�l�e

    // 2. Mapper PWM4 sur RD0 via Peripheral Pin Select (PPS)
    RD0PPS = 0x0F;  // Mapper PWM4 sur RD0

    // 3. D�finir la p�riode du PWM pour 1 kHz
    PR2 = 249;

    // 4. Configurer le Timer2 : prescaler = 64, activer Timer2
    T2CON = 0b00000110;  // T2CKPS = 1:64, TMR2ON = 1

    // 5. Initialiser le duty cycle � 0%
    PWM4DCH = 0;      // Partie haute
    PWM4DCL = 0;      // Partie basse

    // 6. Activer le module PWM4
    PWM4CON = 0b11000000;  // PWM activ�, signal en mode PWM
}

// Configuration du Timer2 pour g�n�rer des interruptions p�riodiques
void setupTimer2() {
    // 1. D�finir la p�riode du Timer2
    PR2 = 249;

    // 2. Configurer le Timer2 : prescaler = 64, activer Timer2
    T2CON = 0b00000110;  // T2CKPS = 1:64, TMR2ON = 1

    // 3. Activer l'interruption Timer2
    PIE1bits.TMR2IE = 1; // Activer l'interruption Timer2
    INTCONbits.PEIE = 1; // Activer les interruptions p�riph�riques
    INTCONbits.GIE = 1;  // Activer les interruptions globales
}

// Routine d'interruption
void __interrupt() ISR() {
    if (PIR1bits.TMR2IF) {
        // Effacer le flag d'interruption Timer2
        PIR1bits.TMR2IF = 0;

        // Incr�menter le compteur d'interruptions
        interruptCounter++;

        // Mettre � jour le niveau de luminosit� toutes les deux interruptions
        if (interruptCounter >= 2) {
            interruptCounter = 0; // R�initialiser le compteur

            // Mettre � jour le niveau de luminosit�
            if (direction) {
                level++;
                if (level >= 255) {
                    direction = 0;
                }
            } else {
                level--;
                if (level == 0) {
                    direction = 1;
                }
            }

            // Mettre � jour le PWM
            updatePWM();
        }
    }
}

// Fonction principale
void main(void) {
    setupPWM(); // Initialisation du PWM sur RD0
    setupTimer2(); // Initialisation du Timer2 pour les interruptions

    while (1) {
        // Boucle principale vide, tout est g�r� par les interruptions
    }
}