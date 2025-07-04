#!/bin/bash
source ./folders/functions.sh
loadsetup
dir="_Irem"

res=$(exist "Moon Patrol.mra")
if [ "$res" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Shot Rider (B-Board 89624B-1).mra" "_Shot Rider" "" "ACT"
   add "$dir" "V" "Traverse USA- Zippy Race (US).mra" "_Traverse USA" "" "ACT"
   add "$dir" "H" "Moon Patrol.mra" "_Moon Patrol" "" "ACT"
   add "$dir" "H" "Vigilante (World, Rev E).mra" "_Vigilante" "" "ACT"
   add "$dir" "H" "Tropical Angel.mra" "_Tropical Angel" "" "ACT"
   dot
fi
