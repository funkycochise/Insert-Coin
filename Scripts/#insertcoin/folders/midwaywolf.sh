#!/bin/bash
source ./folders/functions.sh
dir=$midwaywolf

resh=$(exist "NBAHangtime.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H"  "NBAHangtime.mra" "_NBAHangtime" "" "SPO"
   add "$dir" "H"  "Ultimate Mortal Kombat 3.mra" "_Ultimate Mortal Kombat 3" "" "VSF"
   add "$dir" "H"  "WWFWrestleMania.mra" "_WWFWrestleMania" "" "VSF"

   dot
fi
