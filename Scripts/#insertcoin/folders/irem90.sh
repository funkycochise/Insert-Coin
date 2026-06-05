#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$irem90
else
   dir=$irem
fi

resh=$(exist "Bomber Man - Dyna Blaster.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Bomber Man - Dyna Blaster.mra" "_Bomber Man" "" "ACT"
   add "$dir" "H" "Bomber Man World - New Dyna Blaster - Global Quest.mra" "_Bomber Man World" "" "ACT"
   add "$dir" "H" "Risky Challenge.mra" "_Risky Challenge" "" "ACT"
   dot
fi


