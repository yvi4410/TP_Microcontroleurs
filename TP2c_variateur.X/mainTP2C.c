#include "configbits.h" // Bits de configuration
#include <xc.h>

// Fonction d'initialisation de l'ADC
void setupADC() {
    // 1. S�lectionner AN0 (RA0) comme entr�e analogique
    TRISAbits.TRISA0 = 1;  // Configurer RA0 en entr�e
    ANSELAbits.ANSA0 = 1;  // Activer AN0 comme entr�e analogique

    // 2. Configurer l'ADC
    ADCON1bits.ADFM = 1;   // R�sultat justifi� � droite (valeur compl�te sur 10 bits)
    ADCON1bits.ADCS = 0b110; // Horloge ADC = Fosc/64
    ADCON1bits.ADNREF = 0; // R�f�rence bas = 0V
    ADCON1bits.ADPREF = 0b00; // R�f�rence haut = Vdd (5V)

    // 3. Activer l?ADC
    ADCON0bits.ADON = 1;
}

#define _XTAL_FREQ 8000000 // Frequence de l'oscillateur en Hertz

// Fonction pour lire l'ADC sur AN0
unsigned int readADC() {
    ADCON0bits.CHS = 0b00000; // S�lectionner AN0
    __delay_us(5);            // Petit d�lai pour la stabilisation du signal

    ADCON0bits.GO = 1;        // D�marrer la conversion
    while(ADCON0bits.GO);     // Attendre la fin de conversion

    return ((ADRESH << 8) + ADRESL); // Retourner la valeur 10 bits
}

void displayLEDs(unsigned int adcValue) {
    // Diviser la valeur ADC en 16 niveaux (0-15)
    unsigned int level = adcValue / 64; // 1024 / 16 = 64

    // Calculer le duty cycle en fonction du niveau (0-15)
    unsigned int dutyCycle = (level * 1023) / 15;

    // Mettre � jour le duty cycle du PWM pour la LED D1
    PWM4DCH = dutyCycle >> 2;      // 8 bits de poids fort
    PWM4DCL = (dutyCycle & 0x03) << 6; // 2 bits de poids faible dans les bits 7:6
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

    // 4. Configurer le Timer2 : prescaler = 16, activer Timer2
    T2CON = 0b00000100;  // T2CKPS = 1:16, TMR2ON = 1

    // 5. Initialiser le duty cycle � 0%
    PWM4DCH = 0;      // Partie haute
    PWM4DCL = 0;      // Partie basse

    // 6. Activer le module PWM4
    PWM4CON = 0b11000000;  // PWM activ�, signal en mode PWM
}


// Fonction principale
void main(void) {
    setupADC(); // Initialisation de l'ADC
    setupPWM(); // Initialisation du PWM sur RD0

    while (1) {
        unsigned int adcValue = readADC(); // Lire la valeur du potentiom�tre
        displayLEDs(adcValue); // Ajuster l'intensit� de la LED D1
        __delay_ms(10); // Petit d�lai pour �viter un clignotement trop rapide
    }
}