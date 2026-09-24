#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sysfl
else
   dir=$namco
fi

resh=$(exist "Rolling Thunder (rev 3).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Speed Racer.mra" "_Speed Racer" "" "RAC"
   add "$dir" "H" "Final Lap R (Rev. B).mra" "_Final Lap R" "" "RAC"
   dot
fi
