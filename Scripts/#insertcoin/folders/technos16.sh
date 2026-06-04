#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$technos16
else
   dir=$technos
fi

resh=$(exist "The Combatribes (US, Rev 2, Set 1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Double Dragon 3 The Rosetta Stone (US).mra" "_Double Dragon 3 The Rosetta Stone" "" "BEA"
   add "$dir" "H" "The Combatribes (US, Rev 2, Set 1).mra" "_The Combatribes" "" "BEA"
   add "$dir" "H" "WWF WrestleFest (World).mra" "_WWF WrestleFest" "" "SPO"
   dot
fi