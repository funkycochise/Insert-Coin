#!/bin/bash
source ./folders/functions.sh
dir=$upl

resh=$(exist "Ninjakun.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   #addgame "Combat Hawk.mra" "_Combat Hawk"
   add "$dir" "V" "Dorodon (Set 1).mra" "_Dorodon"
   add "$dir" "H" "Ninjakun.mra" "_Ninjakun Majou no Bouken" "" "ACT"
   add "$dir" "H" "Penguin-Kun Wars.mra" "_Penguin-Kun Wars" "" "ACT"
   add "$dir" "H" "Raiders5.mra" "_Raiders5"
   add "$dir" "H" "Nova 2001.mra" "_Nova 2001" "" "STG"
   add "$dir" "H" "US AAF Mustang (25th May. 1990).mra" "_US AAF Mustang" "" "STG"
   dot
fi