#include "configbits.h" // Bits de configuration
#include <xc.h>

void setupPWM() {
    // 1. Configurer RD3 en sortie
    TRISBbits.TRISB0 = 0;
    LATBbits.LATB0 = 0;    // Assurer que la LED est bien contr�l�e

    // 2. Mapper PWM4 sur RD3 via Peripheral Pin Select (PPS)
    RD3PPS = 0b00001111;   // Mapper PWM4 sur RD3

    // 3. D�finir la p�riode du PWM pour 1 kHz
    PR2 = 249;

    // 4. Configurer le Timer2 (prescaler = 16)
    T2CON = 0b00000100;  // Prescaler = 16, Timer2 ON

    // 5. D�finir le duty cycle � 50%
    PWM4DCH = 0b11111111;  // Duty Cycle = 50% (128 en d�cimal)
    PWM4DCL = 0b00000011;  // Bits de poids faible � 0

    // 6. Activer le PWM4
    PWM4CON = 0b11000000;  // Activer le module PWM4
}

void main(void) {
    setupPWM(); // Initialisation du PWM

    while(1) {
        // La LED de D3 brillera � 50% en PWM automatiquement
    }
}