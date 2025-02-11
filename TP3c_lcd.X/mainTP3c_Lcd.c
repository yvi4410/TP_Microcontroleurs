#include "configbits.h" // Bits de configuration
#include <xc.h>

#define _XTAL_FREQ 8000000 // Fréquence de l'oscillateur en Hz

// Fonction pour envoyer un caractère sur l'UART
void UART_SendChar(char c) {
    while(!TX1STAbits.TRMT); // Attendre que l'UART soit prêt à envoyer
    TX1REG = c;              // Envoyer le caractère
}

// Configuration de l'UART
void setupUART() {
    RC6PPS = 0x14;  // RC6 -> TX1 (TX du module EUSART)
    RXPPS  = 0x17;  // RC7 -> RX1 (RX du module EUSART)

    TRISCbits.TRISC6 = 0;  // RC6 en sortie (TX)
    TRISCbits.TRISC7 = 1;  // RC7 en entrée (RX)

    ANSELCbits.ANSC6 = 0;  // Désactiver mode analogique sur RC6
    ANSELCbits.ANSC7 = 0;  // Désactiver mode analogique sur RC7

    TX1STAbits.SYNC = 0;   // Mode asynchrone
    TX1STAbits.BRGH = 1;   // Baud Rate High Speed
    BAUD1CONbits.BRG16 = 0; // Utilisation de SP1BRGL uniquement

    SP1BRGL = 51;  // Valeur calculée pour 9600 bauds avec Fosc = 8MHz

    RC1STAbits.SPEN = 1;  // Activer le module UART
    TX1STAbits.TXEN = 1;  // Activer la transmission
    RC1STAbits.CREN = 1;  // Activer la réception continue

    // Activer les interruptions
    PIE1bits.RCIE = 1;    // Activer l'interruption de réception
    INTCONbits.PEIE = 1;  // Activer les interruptions périphériques
    INTCONbits.GIE = 1;   // Activer les interruptions globales
}

// Routine d'interruption pour gérer la réception
void __interrupt() ISR() {
    if (PIR1bits.RCIF) { // Vérifier si l'interruption est causée par la réception
        if (RC1STAbits.OERR) { // Vérifier une erreur d'overrun
            RC1STAbits.CREN = 0; // Réinitialiser la réception
            RC1STAbits.CREN = 1;
        }
        char received_char = RCREG; // Lire le caractère reçu
        UART_SendChar(received_char); // Renvoyer immédiatement le caractère reçu (echo)
        PIR1bits.RCIF = 0; // Réinitialiser le flag d'interruption
    }
}

// Fonction principale
void main(void) {
    // Configuration de l'UART
    setupUART();
    
    while(1) {
        // Boucle principale, tout est géré via l'interruption
    }
}
