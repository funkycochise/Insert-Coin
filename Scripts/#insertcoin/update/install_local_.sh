#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

addon="/media/fat/Scripts/#local/addon"
source=$addon/_Arcade/_alternatives
arcade="/media/fat/_Arcade"
destination="/media/fat/_Arcade/_Insert Coin"

echo "new local"

if [ -d "$addon" ];
then
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi
   echo "Installing $addon/"
   if [ -d "$addon/_ic/" ];
   then
      for dir in $addon/_ic/*; do
         f=$(basename -- "$file")
          echo "$dir/$f"     
          cp -r "$dir/$f" "$destination"    
      done
   fi
   if test -f "$addon/uni-bios.rom"; then
      cp $addon/uni-bios.rom /media/fat/games/NEOGEO
      echo "local Uni-bios deployed"
   fi
   if test -f "$addon/neogeo.zip"; then
      cp $addon/neogeo.zip /media/fat/games/mame
      echo "local Uni-bios deployed in mame folder"
   fi
   if [ -d "$addon/_Arcade/" ];
   then
      echo "copying mra"
      cp /media/fat/Scripts/#local/addon/_Arcade/*.mra /media/fat/_Arcade
      echo "copying rbf"
      cp /media/fat/Scripts/#local/addon/_Arcade/cores/*.rbf /media/fat/_Arcade/cores
      echo "copying alternatives folders"
      for dir in $addon/_Arcade/_alternatives/*; do
         f=$(basename -- "$file")   
          cp -r "$dir/$f" "$arcade/_alternatives"  
          echo "$dir/$f"    
      done
   fi
fi






