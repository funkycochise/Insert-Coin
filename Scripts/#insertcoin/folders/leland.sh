#!/bin/bash
source ./folders/functions.sh
dir=$leland

resh=$(exist "SuperOffRoad.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "SuperOffRoad.mra" "_SuperOffRoad"
   dot
fi