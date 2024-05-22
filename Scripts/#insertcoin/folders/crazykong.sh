#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Big Kong.mra")
if [ "$res" == "1" ]; then
   dir="_CrazyKong"
   outdir=$1

   add "$dir" "V" "Big Kong.mra" "_Crazy Kong"
   add "$dir" "V" "Crazy Kong (Orca bootleg).mra" "_Crazy Kong"
   add "$dir" "V" "Crazy Kong Part II (Set 1).mra" "_Crazy Kong"
   add "$dir" "V" "Donkey Kong (Spanish Crazy Kong bootleg).mra" "_Crazy Kong"
   dot
fi