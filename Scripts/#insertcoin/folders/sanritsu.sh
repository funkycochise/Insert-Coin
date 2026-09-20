#!/bin/bash
source ./folders/functions.sh
dir=$sanritsu
resh=$(exist "Dr. Micro.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Dr. Micro.mra" "_Dr. Micro" "" "ACT"
   dot
fi