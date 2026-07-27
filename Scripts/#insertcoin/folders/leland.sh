#!/bin/bash
source ./folders/functions.sh
dir=$leland

resh=$(exist "SuperOffRoad.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "SuperOffRoad.mra" "_SuperOffRoad"
   add "$dir" "H" "TrackPak.mra" "_SuperOffRoad"
   add "$dir" "H" "PigOut.mra" "_PigOut"
   dot
fi