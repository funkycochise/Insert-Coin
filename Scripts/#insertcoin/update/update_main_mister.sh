#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/setup.sh

URL="https://raw.githubusercontent.com/funkycochise/Main_MiSTer/master/releases/MiSTer"
DEST="/media/fat/MiSTer"
TMP="/media/fat/MiSTer.tmp"

echo -e "Installing custom Main"

curl -k -fsSL -L "$URL" -o "$TMP"

if [ $? -ne 0 ] || [ ! -s "$TMP" ]; then
    echo "ERREUR : téléchargement échoué"
    rm -f "$TMP"
    exit 1
fi

if [ -f "$DEST" ]; then
    cp "$DEST" "${DEST}.bak"
fi


mv "$TMP" "$DEST"
chmod +x "$DEST"

echo -e "${GREEN}${CHECK}${NC} Completed"
reboot