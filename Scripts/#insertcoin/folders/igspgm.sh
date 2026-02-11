#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep igspgm $names)
else
   igspgm="_IGS_PGM"
fi
dir=$igspgm

resh=$(exist "Demon Front.mra")
resv="0" 
#$(exist "Truxton - Tatsujin.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Demon Front.mra" "_Demon Front" "" "RNG"
dot
fi
