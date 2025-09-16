#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep irem90 $names)
else
   irem90="_Irem M90"
fi
if [ -f "$names" ]; then
   source <(grep irem $names)
else
   irem="_Irem"
fi
dir=$irem
if [ "$show_system" == "1" ]; then
   dir=$irem90
else
   dir=$irem
fi

resh=$(exist "Bomber Man - Dyna Blaster.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Bomber Man - Dyna Blaster.mra" "_Bomber Man" "" "ACT"
   add "$dir" "H" "Bomber Man World - New Dyna Blaster - Global Quest.mra" "_Bomber Man World" "" "ACT"
   add "$dir" "H" "Risky Challenge.mra" "_Risky Challenge" "" "ACT"
   dot
fi


