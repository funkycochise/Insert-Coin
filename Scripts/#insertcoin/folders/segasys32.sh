#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segasys32
else
   dir=$sega
fi

resh=$(exist "Golden Axe The Revenge of Death Adder (World, Rev B).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Alien3 The Gun (World).mra" "_Alien3 The Gun" "" ""
   add "$dir" "H" "Arabian Fight.mra" "_Arabian Fight" "" "BEA"
   add "$dir" "H" "Burning Rival (World).mra" "_Burning Rival" "" ""
   add "$dir" "H" "Dark Edge.mra" "_Dark Edge" "" ""
   add "$dir" "H" "Golden Axe The Revenge of Death Adder (World, Rev B).mra" "_Golden Axe The Revenge of Death Adder" "" "BEA"
   add "$dir" "H" "Holosseum (US, Rev A).mra" "_Holosseum" "" "VSF"
   add "$dir" "H" "Jurassic Park (World, Rev A).mra" "_Jurassic Park" "" ""
   add "$dir" "H" "Rad Rally (World).mra" "_Rad Rally" "" ""
   add "$dir" "H" "Slip Stream (Brazil 950515).mra" "_Slip Stream" "" ""
   add "$dir" "H" "Spider-Man The Videogame (World).mra" "_Spider-Man The Videogame" "" "BEA"
   add "$dir" "H" "Super Visual Football European Sega Cup (Rev A).mra" "_Super Visual Football European Sega Cup" "" ""
   add "$dir" "H" "Super Visual Soccer Sega Cup (US, Rev A).mra" "_Super Visual Soccer Sega Cup" "" ""
   add "$dir" "H" "The J.League 1994 (Japan).mra" "_The J.League 1994" "" ""
   dot
fi