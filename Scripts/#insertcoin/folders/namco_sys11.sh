#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys11
else
   dir=$namco
fi

resh=$(exist "Xevious 3D-G (XV32-VER.B).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Dancing Eyes (DC2-VER.B).mra" "_Dancing Eyes" "" ""
   add "$dir" "H" "Dunk Mania (DM2-VER.C).mra" "_Dunk Mania" "" "SPO"
   add "$dir" "H" "Family Bowl (Japan FB1-VER.A).mra" "_Family Bowl" "" "SPO"
   add "$dir" "H" "Kosodate Quiz My Angel 3 (KQT1-VER.A).mra" "_Kosodate Quiz My Angel 3" "" ""
   add "$dir" "H" "Pocket Racer (Japan PKR1-VER.B).mra" "_Pocket Racer" "" ""
   add "$dir" "H" "Point Blank 2 (World GNB2-VER.A).mra" "_Point Blank 2" "" ""
   add "$dir" "H" "Prime Goal EX (PG1-VER.A).mra" "_Prime Goal EX" "" ""
   add "$dir" "H" "Soul Edge Ver. II (SO4-VER.C).mra" "_Soul Edge Ver. II" "" ""
   add "$dir" "H" "Star Sweep (STP1-VER.A).mra" "_Star Sweep" "" "PUZ"
   add "$dir" "H" "Tekken (TE2 Ver.C).mra" "_Tekken" "" "VSF"
   add "$dir" "H" "Tekken 2 Ver.B (TES2-VER.D).mra" "_Tekken 2" "" "VSF"
   add "$dir" "H" "Xevious 3D-G (XV32-VER.B).mra" "_Xevious 3D-G" "" "STG"
   dot
fi
