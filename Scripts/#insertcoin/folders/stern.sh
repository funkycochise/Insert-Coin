#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep stern $names)
else
   stern="_Stern"
fi
dir=$stern

resh=$(exist "Berzerk.mra")
resv=$(exist "Armored Car.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Armored Car.mra" "_Armored Car" "" "ACT"
   add "$dir" "H" "Berzerk.mra" "_Berzerk" "" "ACT"
   add "$dir" "H" "Dark Planet.mra" "_Dark Planet" "" "ACT"
   add "$dir" "H" "Frenzy (Rev RA1).mra" "_Frenzy" "" "ACT"
   add "$dir" "H" "Lost Tomb.mra" "_Lost Tomb" "" "ACT"
   add "$dir" "H" "Minefield.mra" "_Minefield" "" "ACT"
   add "$dir" "H" "Moon War.mra" "_Moon War" "" "ACT"
   add "$dir" "H" "Rescue.mra" "_Rescue" "" "ACT"
   add "$dir" "H" "Scramble (Stern, Set 1).mra" "_Scramble" "" "ACT"
   add "$dir" "H" "Speed Coin.mra" "_Speed Coin" "" "ACT"
   add "$dir" "H" "Star Jacker (alt).mra" "_Star Jacker" "" "ACT"
   add "$dir" "H" "Tazz-Mania (Set 1).mra" "_Tazz-Mania" "" "ACT"
   add "$dir" "H" "Western Express (Japan, rev 4).mra" "_Western Express" "" "ACT"
   add "$dir" "H" "Wild Western.mra" "_Wild Western" "" "ACT"

   dot
fi