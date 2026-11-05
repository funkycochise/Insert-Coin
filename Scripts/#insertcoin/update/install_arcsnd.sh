#!/bin/bash
# Installation du serveur de son hybride (core Gradius 4)
# Deux vérifications indépendantes :
#  1. si /media/fat/games/arcsnd n'existe pas : téléchargement de arcsnd.zip
#     (Insert-Coin_Res), décompression dans /media/fat/Scripts/#insertcoin/temp
#     et installation des fichiers
#  2. si la ligne n'est pas dans /media/fat/linux/user-startup.sh : ajout

ZIP_URL="https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/arcsnd.zip"
TEMP_DIR="/media/fat/Scripts/#insertcoin/temp"
TMP_ZIP="$TEMP_DIR/arcsnd.zip"
EXTRACT_DIR="$TEMP_DIR/arcsnd_extract"
SND_DIR="/media/fat/games/arcsnd"
SCRIPT="/media/fat/Scripts/arcade_hybridsoundserver.sh"
STARTUP="/media/fat/linux/user-startup.sh"
LINE='[[ -e /media/fat/Scripts/arcade_hybridsoundserver.sh ]] && /media/fat/Scripts/arcade_hybridsoundserver.sh &'
ERREUR=0

cleanup() {
    rm -rf "$EXTRACT_DIR" "$TMP_ZIP"
    rmdir "$TEMP_DIR" 2>/dev/null
}

install_files() {
    mkdir -p "$TEMP_DIR"
    rm -rf "$EXTRACT_DIR" "$TMP_ZIP"

    echo "Téléchargement de arcsnd.zip..."
    if ! curl -fsSL -o "$TMP_ZIP" "$ZIP_URL"; then
        echo "Échec avec vérification SSL, nouvel essai sans vérification..."
        if ! curl -fsSL --insecure -o "$TMP_ZIP" "$ZIP_URL"; then
            echo "ERREUR : téléchargement impossible."
            return 1
        fi
    fi

    echo "Décompression dans $EXTRACT_DIR..."
    mkdir -p "$EXTRACT_DIR"
    if ! unzip -o "$TMP_ZIP" -d "$EXTRACT_DIR"; then
        echo "ERREUR : décompression impossible."
        return 1
    fi

    if [ ! -f "$EXTRACT_DIR/games/arcsnd/arcsnd" ] || [ ! -f "$EXTRACT_DIR/Scripts/arcade_hybridsoundserver.sh" ]; then
        echo "ERREUR : fichiers attendus absents du zip."
        return 1
    fi

    mkdir -p "$SND_DIR" /media/fat/Scripts
    cp -f "$EXTRACT_DIR/games/arcsnd/arcsnd" "$SND_DIR/arcsnd"
    cp -f "$EXTRACT_DIR/Scripts/arcade_hybridsoundserver.sh" "$SCRIPT"
    chmod +x "$SCRIPT"
    echo "OK : $SND_DIR/arcsnd et $SCRIPT installés."
    return 0
}

# --- Vérification 1 : présence de arcsnd ---
if [ -d "$SND_DIR" ]; then
    echo "OK : $SND_DIR déjà présent."
else
    trap cleanup EXIT
    install_files || ERREUR=1
    cleanup
    trap - EXIT
fi

# --- Vérification 2 : présence dans user-startup.sh ---
mkdir -p /media/fat/linux
touch "$STARTUP"
if grep -qF "$LINE" "$STARTUP"; then
    echo "OK : entrée déjà présente dans $STARTUP"
else
    if [ -s "$STARTUP" ] && [ -n "$(tail -c1 "$STARTUP")" ]; then
        echo "" >> "$STARTUP"
    fi
    echo "$LINE" >> "$STARTUP"
    echo "OK : entrée ajoutée dans $STARTUP"
fi

echo "Terminé."
exit $ERREUR
