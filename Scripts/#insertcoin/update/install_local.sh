#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

addon="/media/fat/Scripts/#local/addon"
source=$addon/_Arcade/_alternatives

if [ -d "$addon" ];
then
   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi
   echo "Installing $addon/"
   #ls $addon/_Arcade/*.mra
   #ls $addon/_Arcade/cores/*.rbf
   cp $addon/_Arcade/*.mra $ARCADE/
   cp $addon/_Arcade/cores/*.rbf $ARCADE/cores

   for dir in $source/*; do
     d=$(basename -- "$dir")
     #echo "Target $ALT/$d"
     if [ ! -d "$ALT/$d" ] 
     then
        #echo "Creating $ALT/$d"
        mkdir "$ALT/$d"
     fi
     for file in "$dir"/*; do
       f=$(basename -- "$file")
       #echo "$dir/$f"
       src="$source/$d/$f"
       des="$ALT/$d/$f"
       #echo "$src"
       #echo "To $des" 
       cp "$src" "$des"
     done
   done

   if test -f "$addon/uni-bios.rom"; then
      cp $addon/uni-bios.rom /media/fat/games/NEOGEO
      #echo "local Uni-bios deployed"
   fi
   if test -f "$addon/neogeo.zip"; then
      cp $addon/neogeo.zip /media/fat/games/mame
      #echo "local Uni-bios deployed"
   fi
   if test -f "$addon/key.sh"; then
      cp "$addon/key.sh" /media/fat/Scripts/#insertcoin/update
      #echo "local key.sh deployed"
   fi
fi
