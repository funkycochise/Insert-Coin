#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Lady Bug.mra")
if [ "$res" == "1" ]; then
   dir="_Ladybug"
   outdir=$1
   add "$dir" "V" "Cosmic Avenger.mra" "_Cosmic Avenger"
   add "$dir" ""$out"" "Dorodon (Set 1).mra" "_Dorodon"
   add "$dir" "V" "Lady Bug.mra" "_Lady Bug"

   add "$dir" "H" "Snap Jack.mra" "_Snap Jack"
   dot
fi