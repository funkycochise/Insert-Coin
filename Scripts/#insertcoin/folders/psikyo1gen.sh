#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$psikyo1gen
else
   dir=$psikyo
fi

resv=$(exist "Strikers 1945 II.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V"  "Battle K-Road.mra" "_Battle K-Road" "" "VSF"
   add "$dir" "V"  "Gunbird (World).mra" "_Gunbird" "" "STG"
   add "$dir" "H"  "Samurai Aces (World).mra" "_Samurai Aces" "" "STG"

   dot
fi
