#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "The Final Round (version M).mra")
if [ "$res" == "1" ]; then
   dir="_Konami Twin16"
   outdir=$1
   #add_folder 
   add "$dir" "H" "Cue Brick (Japan).mra" "_Cue Brick" "" "PUZ"
   add "$dir" "H" "Devil World.mra" "_Devil World" "" "RNG"
   add "$dir" "H"  "M.I.A. - Missing in Action (version T).mra" "_M.I.A. - Missing in Action" "" "RNG"
   add "$dir" "H" "The Final Round (version M).mra" "_The Final Round" "" "SPO"
   add "$dir" "H" "Vulcan Venture (New).mra" "_Vulcan Venture" "" "STG"
   dot
fi
