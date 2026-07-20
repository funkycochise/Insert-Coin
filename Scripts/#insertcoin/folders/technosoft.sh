#!/bin/bash
source ./folders/functions.sh
dir=$technosoft

resh=$(exist "Hyper Duel.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Hyper Duel.mra" "_Hyper Duel" "" "STG"
   add "$dir" "H" "Magical Error wo Sagase.mra" "_Magical Error wo Sagase" "" "PUZ"

   dot
fi
