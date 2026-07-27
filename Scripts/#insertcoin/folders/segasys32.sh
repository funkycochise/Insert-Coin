#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segasys32
else
   dir=$sega
fi

resh=$(exist "Golden Axe The Revenge of Death Adder (World, Rev B).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Golden Axe The Revenge of Death Adder (World, Rev B).mra" "_Golden Axe The Revenge of Death Adder" "" "BEA"
   dot
fi
