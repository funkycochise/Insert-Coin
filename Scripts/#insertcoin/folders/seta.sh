#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep seta $names)
else
   seta="_Seta"
fi
seta="_Seta"
dir=$seta

resv=$(exist "Caliber 50 (Ver. 1.01).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V"  "Caliber 50 (Ver. 1.01).mra" "_Caliber 50" "" "RNG"
   dot
fi