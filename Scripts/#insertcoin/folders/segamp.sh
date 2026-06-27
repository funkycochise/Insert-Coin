#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segamegaplay
else
   dir=$sega
fi
#echo "$dir"
resh=$(exist "Sega Mega Play - Sonic The Hedgehog.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Sega Mega Play - Bio-hazard Battle.mra" "_Mega Play - Bio-hazard Battle" "" ""
   add "$dir" "H" "Sega Mega Play - Columns III.mra" "_Mega Play - Columns III" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Golden Axe II (Rev B).mra" "_Mega Play - Golden Axe II" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Golden Axe II.mra" "_Mega Play - Golden Axe II" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Grand Slam.mra" "_Mega Play - Grand Slam" "" ""
   add "$dir" "H" "Sega Mega Play - Gunstar Heroes.mra" "_Mega Play - Gunstar Heroes" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Mazin Wars.mra" "_Mega Play - Mazin Wars" "" ""
   add "$dir" "H" "Sega Mega Play - Shinobi III.mra" "_Mega Play - Shinobi III" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Sonic The Hedgehog 2.mra" "_Mega Play - Sonic The Hedgehog 2" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Sonic The Hedgehog.mra" "_Mega Play - Sonic The Hedgehog" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Streets of Rage II.mra" "_Mega Play - Streets of Rage II" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Tecmo World Cup.mra" "_Mega Play -  Tecmo World Cup" "" "ACT"
   dot
fi
