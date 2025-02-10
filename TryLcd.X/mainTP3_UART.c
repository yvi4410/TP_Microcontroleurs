#include "configbits.h" // Bits de configuration
#include <xc.h>

#define _XTAL_FREQ 8000000 // Fr�quence de l'oscillateur en Hertz

// Fonction pour envoyer un caract�re sur l'UART
void UART_SendChar(char c) {
    while(!TX1STAbits.TRMT); // Attendre que l'UART soit pr�t � envoyer
    TX1REG = c;              // Envoyer le caract�re
}

// Nouvelle fonction qui envoie exactement 'length' caract�res depuis le tableau
void UART_SendTable(const char *table, unsigned int length) {
    unsigned int i;
    for(i = 0; i < length; i++){
         UART_SendChar(table[i]);
    }
}

void setupUART() {
    RC6PPS = 0x14;  // RC6 ? TX1 (TX du module EUSART)
    RXPPS  = 0x17;  // RC7 ? RX1 (RX du module EUSART)
    
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
}

// Fonction principale
void main(void) {
    // Configuration UART
    setupUART();

    // D�finition du tableau de caract�res � envoyer
    const char message[] = "Hello, World!\n\r";
    // Calcul de la longueur du message (sans compter le caract�re nul)
    unsigned int message_length = sizeof(message) - 1;

    while(1) {
        // Envoyer le contenu du tableau et s'arr�ter apr�s le dernier caract�re
        UART_SendTable(message, message_length);
        __delay_ms(1000);
    }
}
