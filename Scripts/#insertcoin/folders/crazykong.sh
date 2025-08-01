#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep crazykong $names)
else
   crazykong="_CrazyKong"
fi
dir=$crazykong

res=$(exist "Crazy Kong (Kyoei).mra")
if [ "$res" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Big Kong.mra" "_Crazy Kong"
   add "$dir" "V" "Crazy Kong (Kyoei).mra" "_Crazy Kong"
   add "$dir" "V" "Crazy Kong (Orca bootleg).mra" "_Crazy Kong"
   add "$dir" "V" "Crazy Kong Part II (Set 1).mra" "_Crazy Kong"
   add "$dir" "V" "Donkey Kong (Spanish Crazy Kong bootleg).mra" "_Crazy Kong"
   dot
fi