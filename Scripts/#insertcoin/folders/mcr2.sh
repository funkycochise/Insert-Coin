#!/bin/bash
source ./folders/functions.sh
loadsetup
dir="_Midway_MCR2"
if [ "$merge_system" == "1" ]; then
      dir="_Midway"
fi

res=$(exist "Tron.mra")
if [ "$res" == "1" ]; then
   outdir=$1
   add "$dir" "V"  "Satan's Hollow (Set 1).mra" "_Satan's Hollow"
   add "$dir" "V"  "Tron.mra" "_Tron"

   add "$dir" "H"  "Domino Man.mra" "_Domino Man"
   add "$dir" "H"  "Kozmik Krooz'r.mra" "_Kozmik Kroozr"
   add "$dir" "H"  "Two Tigers (Tron Conversion).mra" "_Two Tigers"
   add "$dir" "H"  "Wacko.mra" "_Wacko"
   dot
fi