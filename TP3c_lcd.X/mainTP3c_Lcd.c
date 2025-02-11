#include "configbits.h" // Bits de configuration
#include <xc.h>

#define _XTAL_FREQ 8000000 // Fr�quence de l'oscillateur en Hz

// Fonction pour envoyer un caract�re sur l'UART
void UART_SendChar(char c) {
    while(!TX1STAbits.TRMT); // Attendre que l'UART soit pr�t � envoyer
    TX1REG = c;              // Envoyer le caract�re
}

// Configuration de l'UART
void setupUART() {
    RC6PPS = 0x14;  // RC6 -> TX1 (TX du module EUSART)
    RXPPS  = 0x17;  // RC7 -> RX1 (RX du module EUSART)

    TRISCbits.TRISC6 = 0;  // RC6 en sortie (TX)
    TRISCbits.TRISC7 = 1;  // RC7 en entr�e (RX)

    ANSELCbits.ANSC6 = 0;  // D�sactiver mode analogique sur RC6
    ANSELCbits.ANSC7 = 0;  // D�sactiver mode analogique sur RC7

    TX1STAbits.SYNC = 0;   // Mode asynchrone
    TX1STAbits.BRGH = 1;   // Baud Rate High Speed
    BAUD1CONbits.BRG16 = 0; // Utilisation de SP1BRGL uniquement

    SP1BRGL = 51;  // Valeur calcul�e pour 9600 bauds avec Fosc = 8MHz

    RC1STAbits.SPEN = 1;  // Activer le module UART
    TX1STAbits.TXEN = 1;  // Activer la transmission
    RC1STAbits.CREN = 1;  // Activer la r�ception continue

    // Activer les interruptions
    PIE1bits.RCIE = 1;    // Activer l'interruption de r�ception
    INTCONbits.PEIE = 1;  // Activer les interruptions p�riph�riques
    INTCONbits.GIE = 1;   // Activer les interruptions globales
}

// Routine d'interruption pour g�rer la r�ception
void __interrupt() ISR() {
    if (PIR1bits.RCIF) { // V�rifier si l'interruption est caus�e par la r�ception
        if (RC1STAbits.OERR) { // V�rifier une erreur d'overrun
            RC1STAbits.CREN = 0; // R�initialiser la r�ception
            RC1STAbits.CREN = 1;
        }
        char received_char = RCREG; // Lire le caract�re re�u
        UART_SendChar(received_char); // Renvoyer imm�diatement le caract�re re�u (echo)
        PIR1bits.RCIF = 0; // R�initialiser le flag d'interruption
    }
}

// Fonction principale
void main(void) {
    // Configuration de l'UART
    setupUART();
    
    while(1) {
        // Boucle principale, tout est g�r� via l'interruption
    }
}
