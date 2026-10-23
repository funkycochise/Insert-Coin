#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys22
else
   dir=$namco
fi

resh=$(exist "Ridge Racer (World, RR2 Ver.B).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Ace Driver- Racing Evolution (World, AD2).mra" "_Ace Driver- Racing Evolution" "" ""
   add "$dir" "H" "Ace Driver- Victory Lap (World, ADV2 Ver.B).mra" "_Ace Driver- Victory Lap" "" ""
   add "$dir" "H" "Air Combat 22 (Japan, ACS1 Ver.B).mra" "_Air Combat 22" "" ""
   add "$dir" "H" "Alpine Racer (World, AR2 Ver.D).mra" "_Alpine Racer" "" ""
   add "$dir" "H" "Alpine Racer 2 (World, ARS2 Ver.B).mra" "_Alpine Racer 2" "" ""
   add "$dir" "H" "Alpine Surfer (World, AF2 Ver.A).mra" "_Alpine Surfer" "" ""
   add "$dir" "H" "Aqua Jet (World, AJ2 Ver.B).mra" "_Aqua Jet" "" ""
   add "$dir" "H" "Armadillo Racing (World, AM2 Ver.A).mra" "_Armadillo Racing" "" ""
   add "$dir" "H" "Cyber Commando (Japan, CY1).mra" "_Cyber Commando" "" ""
   add "$dir" "H" "Cyber Cycles (World, CB2 Ver.C).mra" "_Cyber Cycles" "" ""
   add "$dir" "H" "Dirt Dash (World, DT2 Ver.C).mra" "_Dirt Dash" "" ""
   add "$dir" "H" "Prop Cycle (World, PR2 Ver.A).mra" "_Prop Cycle" "" ""
   add "$dir" "H" "Rave Racer (World, RV2 Ver.B).mra" "_Rave Racer" "" ""
   add "$dir" "H" "Ridge Racer (World, RR2 Ver.B).mra" "_Ridge Racer" "" "RAC"
   add "$dir" "H" "Ridge Racer 2 (World, RRS2).mra" "_Ridge Racer 2" "" "RAC"
   add "$dir" "H" "Time Crisis (World, TS2 Ver.B).mra" "_Time Crisis" "" "VSF"
   add "$dir" "H" "Tokyo Wars (World, TW2 Ver.A).mra" "_Tokyo Wars" "" ""
   dot
fi
