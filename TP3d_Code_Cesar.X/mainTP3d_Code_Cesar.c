#include "configbits.h" 
#include "spi.h"
#include "lcd.h"
#include <xc.h>

#define _XTAL_FREQ 8000000  // Fr�quence d'oscillation de 8 MHz

void main(void) {
    // Initialisation des broches pour SPI et LCD
    SPI_InitializePins();
    LCD_InitializePins();
    
    // Initialisation des modules SPI et LCD
    SPI_Initialize();
    LCD_Initialize();
    
    // Effacer l'�cran LCD
    LCD_Clear();
    
    // Positionner le curseur en haut � gauche (0,0)
    LCD_GoTo(0, 0);
    
    // Afficher "Hello, World !" sur l'�cran LCD
    LCD_WriteString("Hello, World !");
    
    while (1) {
        // Boucle infinie
    }
}