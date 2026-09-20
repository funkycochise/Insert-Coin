#!/bin/bash
source ./folders/functions.sh
dir=$visco

resv=$(exist "Vasara.mra")
resh=$(exist "Drift Out '94 - The Hard Order.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Storm Blade.mra" "_Storm Blade" "" "STG"
   add "$dir" "V" "Vasara.mra" "_Vasara" "" "STG"
   add "$dir" "V" "Vasara 2.mra" "_Vasara 2" "" "STG"
   add "$dir" "V" "Galmedes (Japan, bazset).mra" "_Galmedes" "" "STG"
   add "$dir" "V" "U.N. Defense Force - Earth Joker (US-Japan, set 1, bazset).mra" "_U.N. Defense Force - Earth Joker" "" "STG"

   add "$dir" "H" "Drift Out '94 - The Hard Order.mra" "_Drift Out '94 - The Hard Order" "" "SPO"
   add "$dir" "H" "Monster Slider.mra" "_Monster Slider" "" ""

   dot
fi