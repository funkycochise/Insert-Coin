#!/bin/bash
source ./folders/functions.sh
dir=$seibu

resh=$(exist "Empire City.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Empire City.mra" "_Empire City" "" "ACT"

   dot
fi
