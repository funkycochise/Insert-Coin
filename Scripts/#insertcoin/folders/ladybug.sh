#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep ladybug $names)
else
   ladybug="_Ladybug"
fi
dir=$ladybug

res=$(exist "Lady Bug.mra")
if [ "$res" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Cosmic Avenger.mra" "_Cosmic Avenger"
   add "$dir" ""$out"" "Dorodon (Set 1).mra" "_Dorodon"
   add "$dir" "V" "Lady Bug.mra" "_Lady Bug"

   add "$dir" "H" "Snap Jack.mra" "_Snap Jack"
   dot
fi