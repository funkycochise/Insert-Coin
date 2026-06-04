#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$mcr2
else
   dir=$bally_midway
fi

resh=$(exist "Wacko.mra")
resv=$(exist "Tron.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V"  "Satan's Hollow (Set 1).mra" "_Satan's Hollow"
   add "$dir" "V"  "Tron.mra" "_Tron"

   add "$dir" "H"  "Domino Man.mra" "_Domino Man"
   add "$dir" "H"  "Kozmik Krooz'r.mra" "_Kozmik Kroozr"
   add "$dir" "H"  "Two Tigers (Tron Conversion).mra" "_Two Tigers"
   add "$dir" "H"  "Wacko.mra" "_Wacko"
   dot
fi