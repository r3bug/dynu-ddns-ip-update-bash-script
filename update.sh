#!/bin/bash

# CREDENZIALI
API_KEY="Hashed Password Account"
HOSTNAME="dominio.mywire.org"



IP_URL="https://api.dynu.com/nic/update"
# Ottieni l'indirizzo IP pubblico attuale
CURRENT_IP=$(curl -s https://api.ipify.org)

# Esegui la richiesta HTTP per aggiornare il DDNS
RESPONSE=$(curl -s "$IP_URL?hostname=$HOSTNAME&myip=$CURRENT_IP&password=$API_KEY")

# Controlla la risposta
if echo "$RESPONSE" | grep -q "good"; then
    echo "Aggiornamento DDNS riuscito! IP: $CURRENT_IP"
else
    echo "Errore nell'aggiornamento DDNS: $RESPONSE"
fi