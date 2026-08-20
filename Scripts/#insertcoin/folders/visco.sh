#!/bin/bash
source ./folders/functions.sh
dir=$visco

resv=$(exist "Caliber 50 (Ver. 1.01).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Drift Out '94 - The Hard Order.mra" "_Drift Out '94 - The Hard Order" "" "SPO"
   add "$dir" "V" "Storm Blade.mra" "_Storm Blade" "" "STG"
   add "$dir" "V" "Vasara.mra" "_Vasara" "" "STG"
   add "$dir" "V" "Vasara 2.mra" "_Vasara 2" "" "STG"

   dot
fi