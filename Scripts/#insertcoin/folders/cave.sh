#!/bin/bash
source ./folders/functions.sh
dir=$cave

resh=$(exist "Puzzle Uo Poko (World).mra")
resv=$(exist "DoDonPachi (World, 1997 25 Master Ver.).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "DoDonPachi (World, 1997 25 Master Ver.).mra" "_DoDonPachi" "" "STG"
   add "$dir" "V" "DonPachi (US).mra" "_DonPachi" "" "STG"
   add "$dir" "V" "ESP Ra.De. (World 1998 422 International Ver).mra" "_ESP Ra.De" "" "STG"
   add "$dir" "V" "Fever SOS (World, 980925 VER).mra" "_Fever SOS" "" "STG"
   add "$dir" "V" "Guwange (Japan, 1999 624 Master Ver 1655).mra" "_Guwange" "" "STG"

   add "$dir" "H" "Gaia Crusaders.mra" "_Gaia Crusaders"
   add "$dir" "H" "Puzzle Uo Poko (World).mra" "_Puzzle Uo Poko" "" "PUZ"
   add "$dir" "H" "Thunder Heroes (set 1).mra" "_Thunder Heroes"

   dot
fi
