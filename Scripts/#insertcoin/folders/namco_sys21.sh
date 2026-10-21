#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys21
else
   dir=$namco
fi

resh=$(exist "Starblade (ST2, World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Air Combat (AC2, US).mra" "_Air Combat (AC2, US)" "" "STG"
   add "$dir" "H" "Cyber Sled (CY2, World).mra" "_Cyber Sled (CY2, World)" "" "STG"
   add "$dir" "H" "Solvalou (SV1, Japan).mra" "_Solvalou (SV1, Japan)" "" "STG"
   add "$dir" "H" "Starblade (ST2, World).mra" "_Starblade (ST2, World)" "" "STG"
   add "$dir" "H" "Winning Run '91 (Japan) (1991-03-05, Ver 1.0).mra" "_Winning Run '91 (Japan) (1991-03-05, Ver 1.0)" "" "RAC"
   add "$dir" "H" "Winning Run (World) (89-06-06, Ver.09).mra" "_Winning Run (World) (89-06-06, Ver.09)" "" "RAC"
   add "$dir" "H" "Winning Run- Suzuka GP (Japan) (89-12-03, Ver.02).mra" "_Winning Run- Suzuka GP (Japan) (89-12-03, Ver.02)" "" "RAC"
   dot
fi
