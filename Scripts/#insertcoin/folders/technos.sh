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

   add "$dir" "H" "Double Dragon (World set 1).mra" "_Double Dragon" "" "BEA"
   add "$dir" "H" "Double Dragon II The Revenge (World).mra" "_Double Dragon II The Revenge" "" "BEA"
   add "$dir" "H" "Mat Mania.mra" "_Mat Mania" "" "SPO"
   add "$dir" "H" "Mania Challenge (Set 1).mra" "_Mania Challenge" "" "SPO"
   add "$dir" "H" "Renegade (US).mra" "_Renegade" "" "BEA"
   add "$dir" "H" "V'Ball (US).mra" "_V'Ball" "" "SPO"
   dot
fi
