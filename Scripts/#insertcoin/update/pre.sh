#!/bin/bash

function macross {
COINOPKEY="/media/fat/games/mame/coinopkey.zip"

if [ ! -f $COINOPKEY ]; then
   find /media/fat/_Arcade/ -maxdepth 1 -type f -name "Super Dimension Fortress Macross*" -delete
   find /media/fat/_Arcade/cores -maxdepth 1 -type f -name "macross_mister*" -delete
fi
}

file="/media/fat/_Arcade/Cabal PGM.mra"
if [ -f "$file" ]; then
   rm -r "$file"
fi
dir="/media/fat/_Arcade/_alternatives/_Cabal PGM"
if [ -d "$dir" ]
then
   rm -r "$dir"
fi

macross
