#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep nmk $names)
else
   nmk="_NMk"
fi
dir=$nmk

resv=$(exist "Argus.mra")
resh=$(exist "US AAF Mustang (25th May. 1990).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Argus.mra" "_Argus" "" "STG"

   add "$dir" "V" "Super Dimension Fortress Macross (Japan).mra" "_Super Dimension Fortress Macross" "" "STG"
   add "$dir" "H" "US AAF Mustang (25th May. 1990).mra" "_US AAF Mustang" "" "STG"
 
   dot
fi