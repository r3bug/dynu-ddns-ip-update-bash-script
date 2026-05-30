# Dynu DDNS Update Script

Piccolo script Bash per aggiornare il record DDNS di Dynu usando l'IP pubblico corrente.

## Cosa fa

Lo script:

1. recupera l'IP pubblico attuale;
2. invia la richiesta di aggiornamento a Dynu;
3. stampa un messaggio di successo o errore.

## Configurazione

Apri `update.sh` e imposta questi due valori:

- `API_KEY`: inserisci la password hashata del tuo profilo Dynu, generata tramite il link ufficiale di Dynu per l'hash della password: https://www.dynu.com/NetworkTools/Hash;
- `HOSTNAME`: inserisci l'hostname del tuo DDNS Dynu.

Esempio:

```bash
API_KEY="la_tua_password_hashata"
HOSTNAME="tuo-hostname.mywire.org"
```

## Utilizzo

Rendi eseguibile lo script se necessario:

```bash
chmod +x update.sh
```

Eseguilo manualmente con:

```bash
./update.sh
```

## Cron

Per automatizzare l'aggiornamento, aggiungi al tuo `crontab` la tua stringa personale e adattala alle tue esigenze. Ad esempio, puoi inserire qui la tua riga:

```bash
*/5 * * * * /root/dynu/ddns.sh >/dev/null 2>&1
```
Oppure per eseguirlo all'avvio:

```bash
@reboot /root/dynu/ddns.sh >/dev/null 2>&1
```

## Note

- Lo script usa l'endpoint ufficiale Dynu per l'aggiornamento DDNS.
- Se cambi hostname o password hashata, aggiorna `update.sh` prima di rilanciare il cron.