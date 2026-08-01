#!/bin/bash
source ./folders/functions.sh
dir=$sesame

resh=$(exist "Vastar.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then


   add "$dir" "H" "Vastar.mra" "_Vastar" "" "STG"

   dot
fi
