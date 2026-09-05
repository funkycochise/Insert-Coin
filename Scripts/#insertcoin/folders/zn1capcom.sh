#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$zn1capcom
else
   dir=$capcom
fi

resh=$(exist "Street Fighter EX (USA).mra")
#if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Battle Arena Toshinden 2 (USA).mra" "_Battle Arena Toshinden 2" "" ""
   add "$dir" "H" "Gallop Racer.mra" "_Gallop Racer" "" ""
   add "$dir" "H" "Star Gladiator Episode I - Final Crusade (USA).mra" "_Star Gladiator Episode I - Final Crusade" "" ""
   add "$dir" "H" "Street Fighter EX (USA).mra" "_Street Fighter EX" "" "VSF"
   add "$dir" "H" "Street Fighter EX Plus (USA 970311).mra" "_Street Fighter EX Plus" "" "VSF"
   dot
#fi