#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep tad $names)
else
   tad="_Tad Corp"
fi
dir=$tad

resh=$(exist "Toki (World, set 1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Toki (World, set 1).mra" "_Toki" "" "ACT"
   dot
fi
