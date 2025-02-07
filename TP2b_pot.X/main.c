#include "configbits.h" // Bits de configuration
#include <xc.h>

// Fonction d'initialisation de l'ADC
void setupADC() {
    // 1. Sélectionner AN0 (RA0) comme entrée analogique
    TRISAbits.TRISA0 = 1;  // Configurer RA0 en entrée
    ANSELAbits.ANSA0 = 1;  // Activer AN0 comme entrée analogique

    // 2. Configurer l'ADC
    ADCON1bits.ADFM = 1;   // Résultat justifié à droite (valeur complète sur 10 bits)
    ADCON1bits.ADCS = 0b110; // Horloge ADC = Fosc/64
    ADCON1bits.ADNREF = 0; // Référence bas = 0V
    ADCON1bits.ADPREF = 0b00; // Référence haut = Vdd (5V)

    // 3. Activer l?ADC
    ADCON0bits.ADON = 1;
}

#define _XTAL_FREQ 8000000 // Frequence de l'oscillateur en Hertz

// Fonction pour lire l'ADC sur AN0
unsigned int readADC() {
    ADCON0bits.CHS = 0b00000; // Sélectionner AN0
    __delay_us(5);            // Petit délai pour la stabilisation du signal

    ADCON0bits.GO = 1;        // Démarrer la conversion
    while(ADCON0bits.GO);     // Attendre la fin de conversion

    return ((ADRESH << 8) + ADRESL); // Retourner la valeur 10 bits
}

// Fonction pour afficher sur les LEDs selon la valeur ADC
void displayLEDs(unsigned int adcValue) {
    if (adcValue < 128) {
        LATD = 0x01;  // Allumer LED D0
        LATB = 0x00;  // Éteindre LEDs sur PORTB
    } else if (adcValue < 256) {
        LATD = 0x02;  // Allumer LED D1
        LATB = 0x00;  // Éteindre LEDs sur PORTB
    } else if (adcValue < 384) {
        LATD = 0x04;  // Allumer LED D2
        LATB = 0x00;  // Éteindre LEDs sur PORTB
    } else if (adcValue < 512) {
        LATD = 0x08;  // Allumer LED D3
        LATB = 0x00;  // Éteindre LEDs sur PORTB
    } else if (adcValue < 640) {
        LATD = 0x00;  // Éteindre LEDs sur PORTD
        LATB = 0x01;  // Allumer LED B0
    } else if (adcValue < 768) {
        LATD = 0x00;  // Éteindre LEDs sur PORTD
        LATB = 0x02;  // Allumer LED B1
    } else if (adcValue < 896) {
        LATD = 0x00;  // Éteindre LEDs sur PORTD
        LATB = 0x04;  // Allumer LED B2
    } else {
        LATD = 0x00;  // Éteindre LEDs sur PORTD
        LATB = 0x08;  // Allumer LED B3
    }
}

// Fonction principale
void main(void) {
    setupADC(); // Initialisation de l'ADC

    TRISD = 0x00; // Configurer le PORTD en sortie (LEDs)
    TRISB = 0x00; // Configurer le PORTB en sortie (LEDs)
    LATD = 0x00;  // Éteindre toutes les LEDs sur PORTD
    LATB = 0x00;  // Éteindre toutes les LEDs sur PORTB

    while (1) {
        unsigned int adcValue = readADC(); // Lire la valeur du potentiomètre
        displayLEDs(adcValue); // Afficher sur les LEDs
        __delay_ms(1); // Petit délai pour éviter un clignotement trop rapide
    }
}