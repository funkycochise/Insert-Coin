#!/bin/bash
source ./folders/functions.sh
dir=$deco
if [ "$show_system" == "1" ]; then
   dir=$deco_simple156
else
   dir=$deco
fi

resh=$(exist "Joe & Mac Returns.mra")
#resv=$(exist "Vapor Trail - Hyper Offence Formation (World, Rev. 1).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Joe & Mac Returns.mra" "_Joe & Mac Returns" "" "ACT"
   add "$dir" "H" "Osman.mra" "_Osman" "" "ACT"
   add "$dir" "H" "Charlie Ninja.mra" "_Charlie Ninja" "" "ACT"
   dot
fi