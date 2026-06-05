#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$mcr3
else
   dir=$bally_midway
fi

resh=$(exist "Discs of Tron.mra")
resv=$(exist "Journey.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V"  "Journey.mra" "_Journey"

   add "$dir" "H"  "Discs of Tron.mra" "_Disc of Tron"
   add "$dir" "H"  "Tapper (Budweiser, 840127).mra" "_Tapper"
   add "$dir" "H"  "Timber.mra" "_Timber"
   dot
fi