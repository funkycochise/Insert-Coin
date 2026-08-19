#!/bin/bash
source ./folders/functions.sh
dir=$seta

resv=$(exist "Caliber 50 (Ver. 1.01).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Caliber 50 (Ver. 1.01).mra" "_Caliber 50" "" "RNG"
   add "$dir" "V" "Change Air Blade.mra" "_Change Air Blade" "" "STG"
   add "$dir" "V" "Storm Blade.mra" "_Storm Blade" "" "STG"
   add "$dir" "V" "Twin Eagle II - The Rescue Mission.mra" "_Twin Eagle II - The Rescue Mission" "" "STG"
   add "$dir" "V" "Ultra X Weapons - Ultra Keibitai.mra" "_Ultra X Weapons - Ultra Keibitai" "" ""
   add "$dir" "V" "Vasara.mra" "_Vasara" "" "STG"
   add "$dir" "V" "Vasara 2.mra" "_Vasara 2" "" "STG"
   add "$dir" "H" "Drift Out '94 - The Hard Order.mra" "_Drift Out '94 - The Hard Order" "" ""
   add "$dir" "H" "Dyna Gear.mra" "_Dyna Gear" "" "ACT"
   dot
fi