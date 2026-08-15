#!/bin/bash
source ./folders/functions.sh
dir=$zn1taito

resh=$(exist "Ray Storm (Ver 2.06A).mra")
resv=""
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Fighters' Impact (Ver 2.02O).mra" "_Fighters' Impact" "" "VSF"
   add "$dir" "H" "Fighters Impact A (Ver 2.00J).mra" "_Fighters' Impact" "" "VSF"
   add "$dir" "H" "G-Darius (Ver 2.02O).mra" "_G-Darius" "" "STG"
   add "$dir" "H" "G-Darius Ver.2 (Ver 2.03J).mra" "_G-Darius" "" "STG"
   add "$dir" "H" "Ray Storm (Ver 2.06A).mra" "_Ray Storm" "" "STG"
   dot
fi