#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh
addon="/media/fat/Scripts/#local/addon"

#echo "Installing local resources in $targetfolder"

targetfolder=$1

function processlocal {
   #echo "processlocal"
   #echo "$1"
   echo "$2"
   folder="$1/$2"
   if [ -d "$folder" ]; then
      #echo "rm $folder"
      rm -r "$folder"
   fi
   mkdir "$folder"
   #echo "/media/fat/Scripts/#local/addon/_ic/$2/*.* $folder" 
   cp $addon/_ic/$2/*.* $folder
}

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
      processlocal $targetfolder "_#Saturn"
   fi
   if test -d "$addon/_ic/_#Pce"; then
      processlocal $targetfolder "_#Pce"
   fi
fi
   if [ -d "$addon/_Arcade/" ];then

      cp  /media/fat/Scripts/#local/addon/_Arcade/*.mra /media/fat/_Arcade/
      cp  /media/fat/Scripts/#local/addon/_Arcade/cores/*.rbf /media/fat/_Arcade/cores
      cp -r  /media/fat/Scripts/#local/addon/_Arcade/_alternatives/ /media/fat/_Arcade
   fi

echo -e "${GREEN}${CHECK}${NC} Completed"
