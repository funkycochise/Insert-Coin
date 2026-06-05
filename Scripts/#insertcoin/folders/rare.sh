#!/bin/bash
source ./folders/functions.sh
dir=$rare

resh=$(exist "Battletoads.mgl")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H"  "Battletoads.mgl" "_Battletoads" "" "BEA"
   dot
fi