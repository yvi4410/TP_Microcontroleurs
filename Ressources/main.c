#include "configbits.h" // Bits de configuration
#include <xc.h>


//config du d�lais
void delai_approx(void) {
    for (unsigned long i = 0; i < 50000; i++) {
        __asm("nop");
    }
}


void main(void) {
    // Configuration des ports pour les LEDs
    TRISD = 0x00;// Port D configur� en sortie
    TRISB = 0x00;// Port B configur� en sortie
    LATD = 0x00; // Initialisation � 0 (LEDs �teintes)
    LATB = 0x00; // Initialisation � 0 (LEDs �teintes)

    while (1) {
        LATD = 0xFF; 
        delai_approx();
        LATD = 0x00;

        LATB = 0xFF;  
        delai_approx();
        LATB = 0x00;
    }
}