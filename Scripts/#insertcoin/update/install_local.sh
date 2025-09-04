#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh
addon="/media/fat/Scripts/#local/addon"

echo "Installing local resources"

targetfolder=$1

#echo "targetfolder : $targetfolder"

if [ -d "$addon/_ic/" ];
then
  if test -f "$addon/uni-bios.rom"; then
     cp $addon/uni-bios.rom /media/fat/games/NEOGEO
     #echo "local Uni-bios deployed"
  fi
  if test -f "$addon/neogeo.zip"; then
     cp $addon/neogeo.zip /media/fat/games/mame
     #echo "local Uni-bios deployed in mame folder"
  fi
if test -d "$addon/_ic/_#Saturn"; then
   cp -r "$addon/_ic/_#Saturn" "$targetfolder"
fi
if test -d "$addon/_ic/_#Pce"; then
   cp -r "$addon/_ic/_#Pce" "$targetfolder"
fi
fi
   if [ -d "$addon/_Arcade/" ];then

      cp  /media/fat/Scripts/#local/addon/_Arcade/*.mra /media/fat/_Arcade/
      cp  /media/fat/Scripts/#local/addon/_Arcade/cores/*.rbf /media/fat/_Arcade/cores
      cp -r  /media/fat/Scripts/#local/addon/_Arcade/_alternatives/ /media/fat/_Arcade
   fi

echo -e "${GREEN}${CHECK}${NC} Completed"