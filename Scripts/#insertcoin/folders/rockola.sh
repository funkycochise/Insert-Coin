#!/bin/bash
source ./folders/functions.sh
dir=$rockola

echo "$rockola"

resh=$(exist "Toki (World, set 1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Nibbler (Set 9).mra" "_Nibbler" "" "ACT"

   dot
fi
