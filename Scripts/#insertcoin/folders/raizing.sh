#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Sorcer Striker.mra")
if [ "$res" == "1" ]; then
   dir="_Raizing-8ing"
   outdir=$1
   add "$dir" "V"  "Armed Police Batrider Special Ver. (USA) (Fri Feb 13 1998).mra" "_Armed Police Batrider" "" "STG"
   add "$dir" "V"  "Battle Bakraid - Unlimited Version (USA) (Tue Jun 8 1999).mra" "_Battle Bakraid" "" "STG"
   add "$dir" "V"  "Battle Garegga (Europe - USA - Japan - Asia) (Sat Feb 3 1996).mra" "_Battle Garegga" "" "STG"
   add "$dir" "V"  "Kingdom Grandprix.mra" "_Kingdom Grandprix" "" "STG"
   add "$dir" "V"  "Sorcer Striker.mra" "_Sorcer Striker" "" "STG"
   dot
fi