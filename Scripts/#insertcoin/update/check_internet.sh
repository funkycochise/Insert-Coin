#!/bin/bash
# check_internet.sh - Vérifie la connexion Internet avant Insert-Coin
# Code de retour : 0 = connexion OK, 1 = connexion absente ou défaillante
# Usage : bash "/media/fat/Scripts/#insertcoin/check_internet.sh" || exit 1

HOSTS=("https://github.com" "https://raw.githubusercontent.com")
RETRIES=3
CONNECT_TIMEOUT=5
MAX_TIME=10
RETRY_DELAY=2

RED=$'\e[31m'
GREEN=$'\e[32m'
YELLOW=$'\e[33m'
RESET=$'\e[0m'

if ! command -v curl >/dev/null 2>&1; then
    echo "${RED}ERREUR : curl est introuvable sur ce système.${RESET}"
    exit 1
fi

echo "Vérification de la connexion Internet..."

last_rc=0
for host in "${HOSTS[@]}"; do
    ok=0
    for ((try = 1; try <= RETRIES; try++)); do
        curl -s -o /dev/null --connect-timeout "$CONNECT_TIMEOUT" --max-time "$MAX_TIME" "$host"
        last_rc=$?
        if [ "$last_rc" -eq 0 ]; then
            ok=1
            break
        fi
        echo "${YELLOW}  ${host} : tentative ${try}/${RETRIES} échouée (code ${last_rc})${RESET}"
        [ "$try" -lt "$RETRIES" ] && sleep "$RETRY_DELAY"
    done

    if [ "$ok" -eq 0 ]; then
        echo ""
        echo "${RED}ERREUR : impossible de joindre ${host}${RESET}"
        case "$last_rc" in
            6)  echo "Cause probable : résolution DNS impossible (vérifier le réseau / DNS)." ;;
            7)  echo "Cause probable : connexion refusée ou réseau injoignable." ;;
            28) echo "Cause probable : délai dépassé (connexion trop lente ou coupée)." ;;
            35|51|58|60)
                echo "Cause probable : erreur de certificat SSL. Vérifier la date et l'heure de la MiSTer"
                echo "(sans horloge à jour, les certificats sont rejetés)." ;;
            *)  echo "Code d'erreur curl : ${last_rc}" ;;
        esac
        echo "Insert-Coin nécessite une connexion Internet. Vérifiez le câble ou le Wi-Fi, puis relancez."
        exit 1
    fi
done

echo "${GREEN}Connexion Internet OK.${RESET}"
exit 0
