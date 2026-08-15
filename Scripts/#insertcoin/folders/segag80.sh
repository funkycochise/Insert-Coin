#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segag80
else
   dir=$sega
fi

resh=$(exist "Star Trek.mra")
resv=""
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "005.mra" "_005" "" "STG"
   add "$dir" "V" "Astro Blaster.mra" "_Astro Blaster" "" "STG"
   add "$dir" "V" "Monster Bash.mra" "_Monster Bash" "" "STG"
   add "$dir" "V" "Pig Newton.mra" "_Pig Newton" "" "ACT"
   add "$dir" "V" "Sindbad Mystery.mra" "_Sindbad Mystery" "" "ACT"
   add "$dir" "V" "Space Odyssey.mra" "_Space Odyssey" "" "STG"
   add "$dir" "H" "Star Trek.mra" "_Star Trek" "" ""
   add "$dir" "H" "Tac-Scan.mra" "_Tac-Scan" "" "STG"
   dot
fi