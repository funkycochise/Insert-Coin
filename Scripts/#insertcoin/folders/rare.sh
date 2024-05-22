#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Battletoads.mgl")
if [ "$res" == "1" ]; then
   dir="_Rare"
   outdir=$1

   add "$dir" "H"  "Battletoads.mgl" "_Battletoads" "" "BEA"
   dot
fi