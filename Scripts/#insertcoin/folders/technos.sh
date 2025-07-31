#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Double Dragon (Japan).mra")
if [ "$res" == "1" ]; then
   dir="_Technos"
   outdir=$1

   add "$dir" "V" "Xain'd Sleena (bootleg, bugfixed).mra" "_Xain'd Sleena" "" "RNG"

   add "$dir" "H" "Double Dragon (Japan).mra" "_Double Dragon" "" "BEA"
   add "$dir" "H" "Double Dragon II The Revenge (World).mra" "_Double Dragon II The Revenge" "" "BEA"
   add "$dir" "H" "V'Ball (US).mra" "_V'Ball" "" "SPO"
   add "$dir" "H" "Renegade (US).mra" "_Renegade" "" "BEA"
   dot
fi