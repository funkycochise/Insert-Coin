#!/bin/bash
source ./folders/functions.sh
dir=$deco
if [ "$show_system" == "1" ]; then
   dir=$deco16
else
   dir=$deco
fi

resh=$(exist "oogie Wings (USA, v1.7, 92.12.14).mra")
resv=$(exist "Vapor Trail - Hyper Offence Formation (World, Rev. 1).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add  "$dir" "H" "Boogie Wings (Euro v1.5, 92.12.07).mra" "_Boogie Wings" "" "STG"
   addr "$dir" "H" "Boogie Wings (USA, v1.7, 92.12.14).mra" "Boogie Wings (USA, v1.7, 92.12.14) (Coc).mra" "_Boogie Wings" "" "STG"
   addr "$dir" "H" "Caveman Ninja (World, Ver. 4).mra" "Caveman Ninja (World, Ver. 4) (Coc).mra" "_Caveman Ninja" "" "ACT"
   add  "$dir" "H" "Caveman Ninja (World ver 4).mra" "_Caveman Ninja" "" "ACT"
   addr "$dir" "H" "Diet Go Go (Europe, Set 1).mra" "Diet Go Go (Europe, Set 1) (Coc).mra" "_Diet Go Go" "" "ACT"
   addr "$dir" "H" "Dark Seal (World, Rev. 3).mra" "Dark Seal (World, Rev. 3) (Coc).mra" "_Dark Seal" "" ""
   add  "$dir" "H"  "Crude Buster (World FX version).mra" "_Crude Buster" "" "BEA"
   addr  "$dir" "H" "Crude Buster (World, FX version).mra" "Crude Buster (World, FX version) (Coc).mra" "_Crude Buster" "" "BEA"
   addr "$dir" "V" "Double Wings (Asia).mra" "Double Wings (Asia) (Coc).mra" "_Double Wings" "" "STG"
   addr  "$dir" "H" "Mutant Fighter (World, Ver. EM-5).mra" "Mutant Fighter (World, Ver. EM-5) (Coc).mra" "_Mutant Fighter" "" "VSF"
   addr  "$dir" "H" "Nitro Ball (World, Set 1).mra" "Nitro Ball (World, Set 1) (Coc).mra" "_Nitro Ball" "" "RNG"
   addr  "$dir" "H" "Robocop 2 (USA, v0.10).mra" "Robocop 2 (USA, v0.10) (Coc).mra" "_Robocop 2" "" "ACT"
   addr "$dir" "H"  "Rohga - Armor Force (World, v5.0).mra" "Rohga - Armor Force (World, v5.0) (Coc).mra" "__Rohga - Armor Force" "" ""
   addr  "$dir" "H" "Super Burger Time (World, Set 1).mra" "Super Burger Time (World, Set 1) (Coc).mra" "_Super Burger Time" "" "ACT"
   addr  "$dir" "H" "The Cliffhanger - Edward Randy (World, Ver. 3).mra" "The Cliffhanger - Edward Randy (World, Ver. 3) (Coc).mra" "_The Cliffhanger - Edward Randy" "" "ACT"
   addr "$dir" "H"  "Tumble Pop (World).mra" "Tumble Pop (World) (Coc).mra" "_Tumble Pop" "" "ACT"
   add  "$dir" "V" "Vapor Trail - Hyper Offence Formation (World revision 1).mra" "_Vapor Trail" "" "STG"
   addr "$dir" "V" "Vapor Trail - Hyper Offence Formation (World, Rev. 1).mra" "Vapor Trail - Hyper Offence Formation (World, Rev. 1) (Coc).mra" "_Vapor Trail" "" "STG" 
   addr "$dir" "H"  "Wizard Fire (World, v2.1).mra" "Wizard Fire (World, v2.1) (Coc).mra" "_Wizard Fire" "" ""

   dot
fi
