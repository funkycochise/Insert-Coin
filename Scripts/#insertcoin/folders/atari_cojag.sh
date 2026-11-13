#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$ataricojag
else
   dir=$atari
fi
 
resh=$(exist "Area 51 (R3000).mra")
if [ "$resh" == "1" ]; then
 
   add "$dir" "H" "Area 51 (R3000).mra" "_Area 51" "" ""
   add "$dir" "H" "Area 51 - Maximum Force Duo v2.0.mra" "_Area 51 - Maximum Force Duo" "" ""
   add "$dir" "H" "Fishin' Frenzy (prototype).mra" "_Fishin' Frenzy" "" ""
   add "$dir" "H" "Freeze (Atari) (prototype, English voice, 96-10-25).mra" "_Freeze" "" ""
   add "$dir" "H" "Maximum Force v1.05.mra" "_Maximum Force" "" ""
   add "$dir" "H" "Vicious Circle (prototype).mra" "_Vicious Circle" "" ""
   dot
fi
