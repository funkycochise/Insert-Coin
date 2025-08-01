#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep bally_midway $names)
else
   bally_midway="_Bally-midway"
fi
dir=$bally_midway

res=$(exist "Galaxian (Namco, Set 1).mra")
if [ "$res" == "1" ]; then
   outdir=$1
   rep "$dir" "V" "_Gaplus"  "_Gaplus" "" "STG"
   add "$dir" "V" "Galaxian (Namco, Set 1).mra" "_Galaxian" "" "STG"

   add "$dir" "H" "Bosconian - Star Destroyer (new version).mra" "_Bosconian" "" "STG"
   add "$dir" "H" "Crater Raider.mra" "_Crater Raider"
   add "$dir" "H" "Demolition Derby (MCR-3 Mono Board Version).mra" "_Demolition Derby"
   add "$dir" "H" "Discs of Tron.mra" "_Disc of Tron"
   add "$dir" "H" "Domino Man.mra" "_Domino Man"
   add "$dir" "H" "Extra Bases.mra" "_Extra Bases"

   dot
fi