#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys12
else
   dir=$namco
fi

resh=$(exist "Tekken 3 (World TET2-VER.E1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Tekken 3 (World TET2-VER.E1).mra" "_Tekken 3" "" "VSF"

   dot
fi
