#include "configbits.h" // Bits de configuration
#include <xc.h>

// Configuration du PWM sur RD0 via PWM4
void setupPWM() {
    // 1. Configurer RD0 en sortie (pour la LED 1)
    TRISDbits.TRISD0 = 0;
    LATDbits.LATD0 = 0;    // Assurer que la LED est bien contrôlée

    // 2. Mapper PWM4 sur RD0 via Peripheral Pin Select (PPS)
    //    Vérifier que la valeur 0x0F correspond bien à PWM4 sur RD0
    RD0PPS = 0x0F;  // Mapper PWM4 sur RD0

    // 3. Définir la période du PWM pour 1 kHz
    PR2 = 249;

    // 4. Configurer le Timer2 : prescaler = 16, activer Timer2
    T2CON = 0b00000100;  // T2CKPS = 1:16, TMR2ON = 1

    // 5. Initialiser le duty cycle à 10%
    PWM4DCH = 25;      // Partie haute
    PWM4DCL = 0x80;    // (2 << 6) : bits de poids faible dans les bits 7:6

    // 6. Activer le module PWM4
    PWM4CON = 0b11000000;  // PWM activé, signal en mode PWM
}

// Configuration du bouton sur RB0 (entrée, bouton actif bas)
void setupButton() {
    TRISBbits.TRISB0 = 1;  // RB0 en entrée
    ANSELBbits.ANSB0 = 0;  // Désactiver le mode analogique sur RB0 si nécessaire
}

void main(void) {
    setupPWM();    // Initialisation du PWM sur RD0
    setupButton(); // Initialisation du bouton sur RB0

    while(1) {
        // Si le bouton est appuyé (actif bas)
        if (PORTBbits.RB0 == 0) {
            // Duty cycle à 100%
            PWM4DCH = 0xFF;  // 255
            PWM4DCL = 0xC0;  // (3 << 6) = 0xC0  ? (255*4 + 3 = 1023)
        } else {
            // Sinon (bouton relâché) : duty cycle à 10%
            PWM4DCH = 25;    // 25
            PWM4DCL = 0x80;  // (2 << 6) = 0x80  ? (25*4 + 2 = 102)
        }
    }
}