#!/bin/bash
source ./folders/functions.sh
dir=$sanritsu
resh=$(exist "Dr. Micro.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Appoooh.mra" "_Appoooh" "" "ACT"
   add "$dir" "H" "Dr. Micro.mra" "_Dr. Micro" "" "ACT"
   add "$dir" "H" "Robo Wres 2001.mra" "_Robo Wres 2001" "" "SPO"
fi