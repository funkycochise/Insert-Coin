#!/bin/bash
source ./folders/functions.sh
dir=$midwaywolf

resh=$(exist "NBAHangtime.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H"  "NBAHangtime.mra" "_NBAHangtime" "" "SPO"

   dot
fi