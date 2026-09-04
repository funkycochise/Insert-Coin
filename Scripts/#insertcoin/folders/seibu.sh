#!/bin/bash
source ./folders/functions.sh
dir=$seibu

resh=$(exist "Empire City.mra")
resv=$(exist "Raiden (World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V" "Raiden (World).mra" "_Raiden" "" "STG"
   add "$dir" "V" "Raiden II (US, set 1).mra" "_Raiden II" "" "STG"
   add "$dir" "V" "Raiden DX.mra" "_Raiden DX" "" "STG"

   add "$dir" "V" "Raiden Fighters (Germany).mra" "_Raiden Fighters" "" "STG"
   add "$dir" "V" "Raiden Fighters 2 - Operation Hell Dive (Germany).mra" "_Raiden Fighters 2 - Operation Hell Dive" "" "STG"
   add "$dir" "V" "Raiden Fighters Jet (Germany).mra" "_Raiden Fighters Jet" "" "STG"
   add "$dir" "V" "Viper Phase 1 (New Version, World).mra" "_Viper Phase 1" "" "STG"

   add "$dir" "H" "Empire City.mra" "_Empire City" "" "ACT"
   add "$dir" "H" "E Jong High School (Japan).mra" "_E Jong High School" "" ""
   add "$dir" "H" "Senkyu (Japan, newer).mra" "_Senkyu" "" "PUZ"

   dot
fi
