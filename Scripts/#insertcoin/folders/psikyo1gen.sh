#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$psikyogen1
else
   dir=$psikyo
fi

resv=$(exist "Gunbird (World).mra")
resh=$(exist "Tengai (World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V"  "Battle K-Road.mra" "_Battle K-Road" "" "VSF"
   add "$dir" "V"  "Gunbird (World).mra" "_Gunbird" "" "STG"
   add "$dir" "V"  "Samurai Aces (World).mra" "_Samurai Aces" "" "STG"
   add "$dir" "V"  "Strikers 1945 (World).mra" "_Strikers 1945" "" "STG"
   add "$dir" "H"  "Tengai (World).mra" "_Tengai" "" "STG"

   dot
fi
