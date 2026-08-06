#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segasys24
else
   dir=$sega
fi

resh=$(exist "Bonanza Bros.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Bonanza Bros.mra" "_Bonanza Bros" "" ""
   add "$dir" "H" "Crack Down.mra" "_Crack Down" "" ""
   add "$dir" "H" "Gain Ground.mra" "_Gain Ground" "" ""
   add "$dir" "H" "Hot Rod.mra" "_Hot Rod" "" ""
   add "$dir" "H" "Rough Racer.mra" "_Rough Racer" "" ""
   add "$dir" "H" "Scramble Spirits.mra" "_Scramble Spirits" "" ""
   dot
fi
