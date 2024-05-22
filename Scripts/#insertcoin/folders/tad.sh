#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Toki (World, set 1).mra")
if [ "$res" == "1" ]; then
   dir="_Tad Corp."
   outdir=$1

   add "$dir" "H" "Toki (World, set 1).mra" "_Toki" "" "ACT"
   dot
fi
