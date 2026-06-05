#!/bin/bash
source ./folders/functions.sh
dir=$tad

resh=$(exist "Toki (World, set 1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Blood Bros (World).mra" "_Blood Bros" "" "ACT"
   add "$dir" "H" "Cabal (World, Joystick).mra" "_Cabal" "" "ACT"
   add "$dir" "H" "Toki (World, set 1).mra" "_Toki" "" "ACT"
   dot
fi
