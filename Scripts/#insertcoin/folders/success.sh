#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep success $names)
else
   success="_Success"
fi
dir=$success

resh=$(exist "D-Con.mra")
resv=$(exist "Akuu Gallet (Japan).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "D-Con.mra" "_D-Con" "" "STG"


   dot
fi
