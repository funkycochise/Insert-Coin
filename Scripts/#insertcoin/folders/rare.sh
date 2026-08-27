#!/bin/bash
source ./folders/functions.sh
dir=$rare

resh=$(exist "Battletoads.mgl")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H"  "Battletoads.mgl" "_Battletoads" "" "BEA"
   add "$dir" "H"  "Killer Instinct.mra" "_Killer Instinct" "" "VSF"
   add "$dir" "H"  "Killer Instinct 2.mra" "_Killer Instinct 2" "" "VSF"
   dot
fi