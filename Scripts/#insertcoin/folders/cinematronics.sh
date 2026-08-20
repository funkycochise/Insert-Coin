#!/bin/bash
source ./folders/functions.sh
dir=$cinematronics

resh=$(exist "Dragon's Lair.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Dragon's Lair.mra" "_Dragon's Lair" "" ""
   add "$dir" "H" "Space Ace.mra" "_Space Ace" "" ""
   dot
fi