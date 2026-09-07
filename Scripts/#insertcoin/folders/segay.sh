#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segayboard
else
   dir=$sega
fi
#echo "$dir"
resh=$(exist "A.B. Cop (World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "G-LOC Air Battle.mra" "_G-LOC Air Battle" "" ""
   add "$dir" "H" "G-LOC R360.mra" "_G-LOC R360" "" ""
   add "$dir" "H" "Galaxy Force II.mra" "_Galaxy Force II" "" ""
   add "$dir" "H" "Power Drift.mra" "_Power Drift" "" ""
   add "$dir" "H" "Rail Chase.mra" "_Rail Chase" "" ""
   add "$dir" "H" "Strike Fighter.mra" "_Strike Fighter" "" ""
   dot
fi
