#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys86
else
   dir=$namco
fi

resh=$(exist "Rolling Thunder (rev 3).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   #add "$dir" "H" "Alien Sector.mra" "_Alien Sector" "" "RNG"
   add "$dir" "H" "Genpei ToumaDen.mra" "_Genpei ToumaDen" "" "ACT"
   add "$dir" "H" "Hopping Mappy.mra" "_Hopping Mappy" "" "ACT"
   add "$dir" "H" "Metro-Cross (set 1).mra" "_Metro-Cross" "" "ACT"
   add "$dir" "H" "The Return of Ishtar.mra" "_The Return of Ishtar"
   add "$dir" "H" "Rolling Thunder (rev 3).mra" "_Rolling Thunder" "" "ACT"
   add "$dir" "H" "Sky Kid Deluxe (set 1).mra" "_Sky Kid Deluxe" "" "ACT"
   add "$dir" "H" "Wonder Momo.mra" "_Wonder Momo" "" "ACT"
   dot
fi
