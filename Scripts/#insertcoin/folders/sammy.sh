#!/bin/bash
source ./folders/functions.sh
dir=$sammy

resv=$(exist "Caliber 50 (Ver. 1.01).mra")
resv=$(exist "Dyna Gear.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Change Air Blade.mra" "_Change Air Blade" "" "STG"
   add "$dir" "H" "Dyna Gear.mra" "_Dyna Gear" "" "ACT"
   add "$dir" "H" "Survival Arts.mra" "_Survival Arts" "" "VSF"
   dot
fi