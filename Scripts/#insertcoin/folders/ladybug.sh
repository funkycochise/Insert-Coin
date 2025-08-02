#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep ladybug $names)
else
   ladybug="_Ladybug"
fi
dir=$ladybug

resh=$(exist "Snap Jack.mra")
resv=$(exist "Lady Bug.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Cosmic Avenger.mra" "_Cosmic Avenger"
   add "$dir" ""$out"" "Dorodon (Set 1).mra" "_Dorodon"
   add "$dir" "V" "Lady Bug.mra" "_Lady Bug"

   add "$dir" "H" "Snap Jack.mra" "_Snap Jack"
   dot
fi