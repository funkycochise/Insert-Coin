#!/bin/bash
source ./folders/functions.sh
loadsetup
dir="_Irem M90"
if [ "$merge_system" == "1" ]; then
      dir="_Irem"
fi

res=$(exist "Bomber Man - Dyna Blaster.mra")
if [ "$res" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Bomber Man - Dyna Blaster.mra" "_Bomber Man" "" "ACT"
   add "$dir" "H" "Bomber Man World - New Dyna Blaster - Global Quest.mra" "_Bomber Man World" "" "ACT"
   add "$dir" "H" "Risky Challenge.mra" "_Risky Challenge" "" "ACT"
   dot
fi


