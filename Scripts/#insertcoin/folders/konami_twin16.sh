#!/bin/bash
source ./folders/functions.sh
loadsetup
dir="_Konami Twin16"
if [ "$merge_system" == "1" ]; then
      dir="_Konami"
fi

res=$(exist "The Final Round (version M).mra")
if [ "$res" == "1" ]; then
   outdir=$1
   rep "$dir" "H" "_Cuebrick" "_Cuebrick" "" "PUZ"
   add "$dir" "H"  "M.I.A. - Missing in Action (version T).mra" "_M.I.A. - Missing in Action" "" "RNG"
   add "$dir" "H" "Devil World.mra" "_Devil World" "" "RNG"
   add "$dir" "H" "Shadow Warriors (World, set 1).mra" "_Shadow Warriors" "" "BEA"
   add "$dir" "H" "The Final Round (version M).mra" "_The Final Round" "" "SPO"
   add "$dir" "H" "Vulcan Venture (New).mra" "_Vulcan Venture" "" "STG"
   dot
fi
