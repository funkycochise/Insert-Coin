#!/bin/bash
source ./folders/functions.sh
dir=$midwaywolf

resh=$(exist "NBAHangtime.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H"  "NBAHangtime.mra" "_NBAHangtime" "" "SPO"
   add "$dir" "H"  "Rampage (Rev 3, 860827).mra" "_Rampage" "" "ACT"
   add "$dir" "H"  "Smash T.V. (rev 8.00) [firefix mixboot].mra" "_Smash T.V." "" "ACT"
   add "$dir" "H"  "Ultimate Mortal Kombat 3.mra" "_Ultimate Mortal Kombat 3" "" "VSF"
   add "$dir" "H"  "Ultimate Mortal Kombat 3.mra" "_Ultimate Mortal Kombat 3" "VSF"
   add "$dir" "H"  "WWFWrestleMania.mra" "_WWFWrestleMania" "" "VSF"

   dot
fi
