#!/bin/bash
source ./folders/functions.sh
dir=$deco
if [ "$show_system" == "1" ]; then
   dir=$deco16
else
   dir=$deco
fi

resh=$(exist "Chelnov - Atomic Runner (World).mra")
resv=$(exist "Burger Time (Set 1).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Boogie Wings (USA v1.7, 92.12.14).mra" "_Boogie Wings" "" "ACT"
   add "$dir" "H" "Boogie Wings (Euro v1.5, 92.12.07).mra" "_Boogie Wings" "" "ACT"
   add "$dir" "H" "Boogie Wings (USA v1.7, 92.12.14) (Coc).mra" "_Boogie Wings" "" "ACT"

   add "$dir" "H" "Caveman Ninja (World ver 4).mra" "_Caveman Ninja" "" "ACT"
   add "$dir" "H" "Crude Buster (World, FX version).mra" "_Crude Buster" "" "BEA"
   add "$dir" "H" "Crude Buster (World, FX version) (Coc).mra" "_Crude Buster" "" "BEA"
   add "$dir" "H" "Dark Seal (World, Rev. 3).mra" "_Dark Seal" "" ""
   add "$dir" "H" "Robocop 2 (USA v0.10).mra" "_Robocop 2" "" "ACT"
   add "$dir" "H" "The Cliffhanger - Edward Randy (World, Ver. 3).mra" "_The Cliffhanger - Edward Randy" "" "ACT"
   add "$dir" "H" "Tumble Pop (World).mra" "_Tumble Pop" "" "ACT"
   add "$dir" "H" "Vapor Trail - Hyper Offence Formation (World, Rev. 1).mra" "_Vapor Trail" "" "STG"
   dot
fi
