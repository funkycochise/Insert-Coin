#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep tad $names)
else
   tad="_Tad Corp"
fi
dir=$tad

res=$(exist "Toki (World, set 1).mra")
if [ "$res" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Toki (World, set 1).mra" "_Toki" "" "ACT"
   dot
fi
