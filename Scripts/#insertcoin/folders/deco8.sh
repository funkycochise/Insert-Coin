#!/bin/bash
source ./folders/functions.sh
dir=$deco
if [ "$show_system" == "1" ]; then
   dir=$deco8
else
   dir=$deco
fi

resh=$(exist "Cobra-Command (World, Rev. 5).mra")
resv=$(exist "Burger Time (Set 1).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Cobra-Command (World, Rev. 5).mra" "_Cobra-Command" "" "STG"
   add "$dir" "H" "Psycho-Nics Oscar (World).mra" "_Psycho-Nics Oscar" "" "ACT"

   dot
fi
