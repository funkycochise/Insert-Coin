#!/bin/bash
source ./folders/functions.sh
dir=""

resh=$(exist "Eleven Beat.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Eleven Beat.mra" "$aleck64" "" "SPO"
   add "$dir" "H" "Hanabi de Doon! - Don-chan Puzzle.mra" "$aleck64" "" "PUZ"
   add "$dir" "H" "Hi Pai Paradise.mra" "$aleck64" "" ""
   add "$dir" "H" "Hi Pai Paradise 2.mra" "$aleck64" "" ""
   add "$dir" "H" "Kurukuru Fever.mra" "$aleck64" "" ""
   add "$dir" "H" "Magical Tetris Challenge (981009 Japan).mra" "$aleck64" "" "PUZ"
   add "$dir" "H" "Mayjinsen 3.mra" "$aleck64" "" ""
   add "$dir" "H" "Star Soldier - Vanishing Earth.mra" "$aleck64" "" "STG"
   add "$dir" "H" "Super Real Mahjong VS (Rev A).mra" "$aleck64" "" ""
   add "$dir" "H" "Super Real Mahjong VS.mra" "$aleck64" "" ""
   add "$dir" "H" "Tower & Shaft.mra" "$aleck64" "" ""
   add "$dir" "H" "Vivid Dolls.mra" "$aleck64" "" "PUZ"
   dot
fi

