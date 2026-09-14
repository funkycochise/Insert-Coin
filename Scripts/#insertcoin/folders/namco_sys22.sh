#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys22
else
   dir=$namco
fi

resh=$(exist "Ridge Racer (World, RR2).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Prop Cycle (World, PR2 Ver.A).mra" "_Prop Cycle" "" ""
   add "$dir" "H" "Rave Racer (World, RV2 Ver.B).mra" "_Rave Racer" "" ""
   add "$dir" "H"  "Ridge Racer (World, RR2).mra" "_Ridge Racer (World, RR2)" "" ""
   add "$dir" "H" "Ridge Racer 2 (World, RRS2).mra" "_Ridge Racer 2 (World, RRS2).mra" "" ""
   add "$dir" "H" "Time Crisis (World, TS2 Ver.B).mra" "_Time Crisis" "" "VSF"
   dot
fi
