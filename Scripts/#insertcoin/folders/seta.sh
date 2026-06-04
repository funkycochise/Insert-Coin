#!/bin/bash
source ./folders/functions.sh
dir=$seta

resv=$(exist "Caliber 50 (Ver. 1.01).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V"  "Caliber 50 (Ver. 1.01).mra" "_Caliber 50" "" "RNG"
   dot
fi