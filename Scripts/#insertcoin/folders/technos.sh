#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep technos $names)
else
   technos="_Technos"
fi
dir=$technos

resh=$(exist "Double Dragon (Japan).mra")
resv=$(exist "Xain'd Sleena (bootleg, bugfixed).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Xain'd Sleena (bootleg, bugfixed).mra" "_Xain'd Sleena" "" "RNG"

   add "$dir" "H" "Double Dragon (Japan).mra" "_Double Dragon" "" "BEA"
   add "$dir" "H" "Double Dragon II The Revenge (World).mra" "_Double Dragon II The Revenge" "" "BEA"
   add "$dir" "H" "V'Ball (US).mra" "_V'Ball" "" "SPO"
   add "$dir" "H" "Renegade (US).mra" "_Renegade" "" "BEA"
   dot
fi