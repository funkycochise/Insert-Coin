#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep konamitwin16 $names)
else
   konamitwin16="_Konami Twin16"
fi
dir=$konamitwin16
if [ -f "$names" ]; then
   source <(grep konami $names)
else
   konami="_Konami"
fi
if [ "$show_system" == "1" ]; then
   dir=$konamitwin16
else
   dir=$konami
fi

resh=$(exist "The Final Round (version M).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add_rep "$dir" "H" "_Cuebrick" "_Cuebrick" "" "PUZ"
   add "$dir" "H"  "M.I.A. - Missing in Action (version T).mra" "_M.I.A. - Missing in Action" "" "RNG"
   add "$dir" "H" "Devil World.mra" "_Devil World" "" "RNG"
   add "$dir" "H" "Shadow Warriors (World, set 1).mra" "_Shadow Warriors" "" "BEA"
   add "$dir" "H" "The Final Round (version M).mra" "_The Final Round" "" "SPO"
   add "$dir" "H" "Vulcan Venture (New).mra" "_Vulcan Venture" "" "STG"
   dot
fi
