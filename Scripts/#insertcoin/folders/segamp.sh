#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segamegaplay
   dir=""
else
   dir=$sega
fi

resh=$(exist "Sega Mega Play - Sonic The Hedgehog.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Sega Mega Play - 4 Cart Test.mra" "$segamegaplay" "" ""
   add "$dir" "H" "Sega Mega Play - Bio-hazard Battle.mra" "$segamegaplay" "" ""
   add "$dir" "H" "Sega Mega Play - Columns III.mra" "$segamegaplay" "" ""
   add "$dir" "H" "Sega Mega Play - Golden Axe II (Rev B).mra" "$segamegaplay" "" ""
   add "$dir" "H" "Sega Mega Play - Golden Axe II.mra" "$segamegaplay" "" ""
   add "$dir" "H" "Sega Mega Play - Grand Slam.mra" "$segamegaplay" "" ""
   add "$dir" "H" "Sega Mega Play - Gunstar Heroes.mra" "$segamegaplay" "" ""
   add "$dir" "H" "Sega Mega Play - Mazin Wars.mra" "$segamegaplay" "" ""
   add "$dir" "H" "Sega Mega Play - Shinobi III.mra" "$segamegaplay" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Sonic The Hedgehog 2.mra" "$segamegaplay" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Sonic The Hedgehog.mra" "$segamegaplay" "" "ACT"
   add "$dir" "H" "Sega Mega Play - Streets of Rage II.mra" "$segamegaplay" "" "BEA"
   add "$dir" "H" "Sega Mega Play - Tecmo World Cup.mra" "$segamegaplay" "" "SPO"
   dot
fi
