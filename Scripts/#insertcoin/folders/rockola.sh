#!/bin/bash
source ./folders/functions.sh
dir=$rockola

resh=$(exist "Nibbler (Set 9).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Nibbler (Set 9).mra" "_Nibbler" "" "ACT"

   dot
fi
