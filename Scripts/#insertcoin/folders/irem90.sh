#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep irem90 $names)
else
   irem90="_Irem M90"
fi
dir=$irem90

res=$(exist "Bomber Man - Dyna Blaster.mra")
if [ "$res" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Bomber Man - Dyna Blaster.mra" "_Bomber Man" "" "ACT"
   add "$dir" "H" "Bomber Man World - New Dyna Blaster - Global Quest.mra" "_Bomber Man World" "" "ACT"
   add "$dir" "H" "Risky Challenge.mra" "_Risky Challenge" "" "ACT"
   dot
fi


