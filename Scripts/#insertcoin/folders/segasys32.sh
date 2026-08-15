#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segasys32
else
   dir=$sega
fi

resh=$(exist "Golden Axe The Revenge of Death Adder (World, Rev B).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Arabian Fight.mra" "_Arabian Fight" "" "BEA"
   add "$dir" "H" "Dark Edge.mra" "_Dark Edge" "" ""
   add "$dir" "H" "Golden Axe The Revenge of Death Adder (World, Rev B).mra" "_Golden Axe The Revenge of Death Adder" "" "BEA"
   add "$dir" "H" "Holosseum (US, Rev A).mra" "_Holosseum" "" "VSF"
   add "$dir" "H" "Spider-Man The Videogame (World).mra" "_Spider-Man The Videogame" "" "BEA"

   dot
fi
