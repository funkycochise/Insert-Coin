#!/bin/bash
source ./folders/functions.sh
dir=$bagman

resh=$(exist "Squash.mra")
resv=$(exist "Bagman.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Bagman.mra" "_Bagman"
   add "$dir" "V" "Botanic (English, Spanish, Set 1).mra" "_Botanic"
   add "$dir" "V" "Pickin'.mra" "_Pickin"
   add "$dir" "V" "Super Bagman.mra" "_Super Bagman"
   add "$dir" "H" "Squash.mra" "_Squash"
   dot
fi