#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segakyugo
else
   dir=$sega
fi
#echo "$dir"
resh=$(exist "Flashgal.mra")
resv=$(exist "Gyrodine.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Flashgal.mra" "_Flashgal" "" "ACT"
   add "$dir" "V" "Gyrodine.mra" "_Gyrodine" "" ""
   add "$dir" "V" "Legend.mra" "_Legend" "" ""
   add "$dir" "V" "Repulse.mra" "_Repulse" "" ""
   add "$dir" "V" "SRD Mission.mra" "_SRD Mission" "" ""
   dot
fi
