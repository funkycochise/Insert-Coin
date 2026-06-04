#!/bin/bash
source ./folders/functions.sh
dir=$igspgm

resh=$(exist "Demon Front.mra")
resv="0" 
#$(exist "Truxton - Tatsujin.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Demon Front.mra" "_Demon Front" "" "RNG"
dot
fi
