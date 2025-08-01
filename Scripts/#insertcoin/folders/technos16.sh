#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep technos16 $names)
else
   technos16="_Technos16"
fi
dir=$technos16

res=$(exist "The Combatribes (US, Rev 2, Set 1).mra")
if [ "$res" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Double Dragon 3 The Rosetta Stone (US).mra" "_Double Dragon 3 The Rosetta Stone" "" "BEA"
   add "$dir" "H" "The Combatribes (US, Rev 2, Set 1).mra" "_The Combatribes" "" "BEA"
   add "$dir" "H" "WWF WrestleFest (World).mra" "_WWF WrestleFest" "" "SPO"
   dot
fi