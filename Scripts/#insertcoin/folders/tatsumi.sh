#!/bin/bash
source ./folders/functions.sh
dir=$tatsumi

resh=$(exist "TX-1.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
 
   add "$dir" "H"  "TX-1.mra" "_TX-1" "" "RAC"
   add "$dir" "H" "Buggy Boy Junior.mra" "_Buggy Boy Junior" "" "RAC"

   dot
fi
