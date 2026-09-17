#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segamodel1
else
   dir=$sega
fi

resh=$(exist "Virtua Racing.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Virtua Racing.mra" "_Virtua Racing" "" "RAC"
   add "$dir" "H" "Virtua Fighter.mra" "_Virtua Fighter" "" "VSF"
   add "$dir" "H" "Star Wars Arcade.mra" "_Star Wars Arcade"
   add "$dir" "H" "Wing War.mra" "_Wing War" "" ""
   dot
fi
