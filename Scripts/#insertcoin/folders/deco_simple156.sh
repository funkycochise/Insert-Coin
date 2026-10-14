#!/bin/bash
source ./folders/functions.sh
dir=$deco
if [ "$show_system" == "1" ]; then
   dir=$deco_simple156
else
   dir=$deco
fi

resh=$(exist "Charlie Ninja.mra")
#resv=$(exist "Vapor Trail - Hyper Offence Formation (World, Rev. 1).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Party Time Gonta the Diver II - Ganbare! Gonta!! 2 (World Release).mra" "_Party Time Gonta the Diver II" "" ""
   add "$dir" "H" "Osman (World).mra" "_Osman" "" "ACT"
   add "$dir" "H" "Joe & Mac Returns (World, Version 1.1, 1994.05.27).mra" "_Joe & Mac Returns" "" "ACT"
   add "$dir" "H" "Heavy Smash (Europe version -2).mra" "_Heavy Smash" "" ""
   add "$dir" "H" "Charlie Ninja.mra" "_Charlie Ninja" "" "ACT"
   add "$dir" "H" "Chain Reaction (World, Version 2.2, 1995.09.25).mra" "_Chain Reaction" "" ""
   dot
fi
