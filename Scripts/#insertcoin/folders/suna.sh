#!/bin/bash
source ./folders/functions.sh
dir=$suna

resh=$(exist "Hard Head.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Brick Zone.mra" "_Brick Zone" "" ""
   add "$dir" "H" "Hard Head.mra" "_Hard Head" "" "ACT"
   add "$dir" "H" "Hard Head 2.mra" "_Hard Head 2" "" "ACT"
   dot
fi