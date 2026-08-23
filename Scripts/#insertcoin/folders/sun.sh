#!/bin/bash
source ./folders/functions.sh
dir=$sun

resh=$(exist "Ikki.mra")
resv=$(exist "Kangaroo.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V" "Arabian.mra" "_Arabian" "" "ACT"
   add "$dir" "V" "Kangaroo.mra" "_Kangaroo" "" "ACT"

   add "$dir" "H" "Ikki.mra" "_Ikki" "" "RNG"

   dot
fi