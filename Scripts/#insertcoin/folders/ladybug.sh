#!/bin/bash
source ./folders/functions.sh
dir=$ladybug

resh=$(exist "Snap Jack.mra")
resv=$(exist "Lady Bug.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Cosmic Avenger.mra" "_Cosmic Avenger"
   add "$dir" "V" "Dorodon (Set 1).mra" "_Dorodon"
   add "$dir" "V" "Lady Bug.mra" "_Lady Bug"

   add "$dir" "H" "Snap Jack.mra" "_Snap Jack"
   dot
fi