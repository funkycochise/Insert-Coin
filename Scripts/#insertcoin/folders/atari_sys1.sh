#!/bin/bash
source ./folders/functions.sh
dir=$atarisys1

resh=$(exist "Peter Pack Rat.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Indiana Jones (set 4).mra" "_Indiana Jones" "" "ACT"
   add "$dir" "H" "Marble Madness (set 4).mra" "_Marble Madness"
   add "$dir" "H" "Marble Madness (set 5 - LSI).mra" "_Marble Madness"
   add "$dir" "H" "Peter Pack Rat.mra" "_Peter Pack Rat"
   add "$dir" "H" "Road Blasters (upright, rev 4).mra" "_Road Blasters"
   add "$dir" "H" "Road Runner (rev 2).mra" "_Road Runner"
   dot
fi