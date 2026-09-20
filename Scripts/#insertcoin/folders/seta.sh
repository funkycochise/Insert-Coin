#!/bin/bash
source ./folders/functions.sh
dir=$seta

resv=$(exist "Caliber 50 (Ver. 1.01).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Caliber 50 (Ver. 1.01).mra" "_Caliber 50" "" "RNG"
   add "$dir" "V" "Twin Eagle II - The Rescue Mission.mra" "_Twin Eagle II - The Rescue Mission" "" "STG"
   add "$dir" "V" "Ultra X Weapons - Ultra Keibitai.mra" "_Ultra X Weapons - Ultra Keibitai" "" "STG"
   add "$dir" "H" "Hi Pai Paradise.mra" "_Hi Pai Paradise" "" ""
   add "$dir" "H" "Hi Pai Paradise 2.mra" "_Hi Pai Paradise 2" "" ""
   add "$dir" "H" "Star Soldier - Vanishing Earth.mra" "_Star Soldier - Vanishing Earth" "" ""
   dot
fi