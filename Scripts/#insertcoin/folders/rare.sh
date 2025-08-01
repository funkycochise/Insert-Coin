#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep rare $names)
else
   rare="_Rare"
fi
dir=$rare

res=$(exist "Battletoads.mgl")
if [ "$res" == "1" ]; then
   outdir=$1

   add "$dir" "H"  "Battletoads.mgl" "_Battletoads" "" "BEA"
   dot
fi