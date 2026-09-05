#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$uplfb
else
   dir=$upl
fi

resv=$(exist "Omega Fighter.mra")
resh=$(exist "Ark Area.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Ark Area.mra" "_Ark Area" "" "STG" 
   add "$dir" "H" "Atomic Robo-Kid.mra" "_Atomic Robo-Kid" "" "ACT"
   add "$dir" "H" "Mutant Night.mra" "_Mutant Night" "" "ACT"
   add "$dir" "H" "Ninja-Kid II.mra" "_Ninja-Kid II" "" "ACT"
   add "$dir" "V" "Omega Fighter.mra" "_Omega Fighter" "" "STG"

   dot
fi