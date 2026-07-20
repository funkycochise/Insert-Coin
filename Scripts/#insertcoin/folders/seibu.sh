#!/bin/bash
source ./folders/functions.sh
dir=$seibu

resh=$(exist "Empire City.mra")
resv=$(exist "Raiden (World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V" "Raiden (World).mra" "_Raiden" "" "STG"

   add "$dir" "H" "Empire City.mra" "_Empire City" "" "ACT"

   dot
fi
