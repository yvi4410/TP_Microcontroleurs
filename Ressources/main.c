#include "configbits.h" // Bits de configuration
#include <xc.h>


//config du délais
void delai_approx(void) {
    for (unsigned long i = 0; i < 50000; i++) {
        __asm("nop");
    }
}


void main(void) {
    // Configuration des ports pour les LEDs
    TRISD = 0x00;// Port D configuré en sortie
    TRISB = 0x00;// Port B configuré en sortie
    LATD = 0x00; // Initialisation à 0 (LEDs éteintes)
    LATB = 0x00; // Initialisation à 0 (LEDs éteintes)

    while (1) {
        LATD = 0xFF; 
        delai_approx();
        LATD = 0x00;

        LATB = 0xFF;  
        delai_approx();
        LATB = 0x00;
    }
}