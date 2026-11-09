#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys23
else
   dir=$namco
fi

resh=$(exist "Ridge Racer (World, RR2 Ver.B).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
add "$dir" "H" "500 GP (US, 5GP3 Ver. C).mra" "_500 GP" "" "RAC"
add "$dir" "H" "Angler King (Japan, AG1 Ver. A).mra" "_Angler King" "" "SPO"
add "$dir" "H" "Crisis Zone (World, CSZO4 Ver. B).mra" "_Crisis Zone" "" ""
add "$dir" "H" "Downhill Bikers (US, DH3 Ver. A).mra" "_Downhill Bikers" "" "RAC"
add "$dir" "H" "Motocross Go! (US, MG2 Ver. A).mra" "_Motocross Go!" "" "RAC"
add "$dir" "H" "Panic Park (World, PNP2 Ver. A).mra" "_Panic Park" "" "ACT"
add "$dir" "H" "Time Crisis II (US, TSS3 Ver. B).mra" "_Time Crisis II" "" ""

   dot
fi
