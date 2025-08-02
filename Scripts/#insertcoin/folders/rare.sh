#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep rare $names)
else
   rare="_Rare"
fi
dir=$rare

resh=$(exist "Battletoads.mgl")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H"  "Battletoads.mgl" "_Battletoads" "" "BEA"
   dot
fi