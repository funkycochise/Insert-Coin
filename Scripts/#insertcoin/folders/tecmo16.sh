#!/bin/bash
source ./folders/functions.sh
dir=$tecmo16

resh=$(exist "Riot (NMK).mra")
resv=$(exist "Final Star Force (US).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Final Star Force (US).mra" "_Final Star Force" "" "STG"
   add "$dir" "H" "Ganbare Ginkun.mra" "" "" "ACT"
   add "$dir" "H" "Riot (NMK).mra" "_Riot" "" "STG"
   dot
fi
