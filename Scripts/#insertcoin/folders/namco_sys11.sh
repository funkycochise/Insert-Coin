#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys11
else
   dir=$namco
fi

resh=$(exist "Tekken (World TE2 Ver.C).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Tekken (World TE2 Ver.C).mra" "_Tekken" "" "VSF"
   add "$dir" "V" "Tekken 2 Ver.B (World TES2 Ver.B).mra" "Tekken 2" "" "VSF"
   dot
fi