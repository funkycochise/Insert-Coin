#!/bin/bash
source ./folders/functions.sh
loadsetup
dir="_Irem M72"
if [ "$merge_system" == "1" ]; then
      dir="_Irem"
fi

res=$(exist "R-Type (World).mra")
if [ "$res" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Air Duel (World, M72 hardware).mra" "_Air Duel" "" "STG"
   add "$dir" "V" "Image Fight (World).mra" "_Image Fight" "" "STG"

   add "$dir" "H" "Dragon Breed (Japan, M72 hardware).mra" "_Dragon Breed" "" "STG"
   add "$dir" "H" "Gallop - Armed Police Unit (Japan, M72 hardware).mra" "_Gallop" "" "STG"
   add "$dir" "H" "Hammerin' Harry (US, M84 hardware).mra" "_Hammerin' Harry" "" "ACT"
   add "$dir" "H" "Legend of Hero Tonma (Japan).mra" "_Legend of Hero Tonma"
   add "$dir" "H" "Mr. HELI no Daibouken (Japan).mra" "_Mr. HELI no Daibouken" "" "STG"
   add "$dir" "H" "Ninja Spirit (Japan).mra" "_Ninja Spirit" "" "ACT"
   add "$dir" "H" "R-Type (World).mra" "_R-Type" "" "STG"
   add "$dir" "H" "R-Type II (World).mra" "_R-Type II" "" "STG"
   add "$dir" "H" "X Multiply (Japan, M72 hardware).mra" "_X Multiply" "" "STG"
   dot
fi
