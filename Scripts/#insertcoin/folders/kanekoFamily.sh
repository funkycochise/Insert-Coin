#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$kanekofamily
else
   dir=$kaneko
fi

resh=$(exist "Bonk's Adventure (World).mra")
if [ "$resh" == "1" ]; then
   add "$dir" "H"  "1000 Miglia - Great 1000 Miles Rally.mra" "_1000 Miglia - Great 1000 Miles Rally" "" "RAC"
   add "$dir" "H"  "Blood Warrior.mra" "_Blood Warrior" "" "BEA"
   add "$dir" "H"  "Bonk's Adventure (World).mra" "_Bonk's Adventure" "" "ACT"
   dot
fi
