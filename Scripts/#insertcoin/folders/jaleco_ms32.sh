#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$jalecoms32
else
   dir=$jaleco
fi

resh=$(exist "P-47 Aces (ver 1.1).mra")
resv=$(exist "The Game Paradise - Master of Shooting! (ver 1.0).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Desert War - Wangan Sensou (ver 1.0).mra" "_Desert War - Wangan Sensou" "" "STG"
   add "$dir" "V"  "The Game Paradise - Master of Shooting! (ver 1.0).mra"  "_The Game Paradise - Master of Shooting!" "" "STG"

   add "$dir" "H"  "Best Bout Boxing (ver 1.3).mra" "_Best Bout Boxing" "" "SPO"
   add "$dir" "H"  "Gratia - Second Earth (ver 1.0, 92047-01 version).mra" "_Gratia - Second Earth" "" "STG"
   add "$dir" "H"  "Hayaoshi Quiz Grand Champion Taikai.mra" "_Hayaoshi Quiz Grand Champion Taikai" "" ""
   add "$dir" "H"  "Hayaoshi Quiz Nettou Namahousou (ver 1.5).mra" "_Hayaoshi Quiz Nettou Namahousou" "" ""
   add "$dir" "H"  "Idol Janshi Suchie-Pai II (ver 1.1).mra" "_Idol Janshi Suchie-Pai II" "" ""
   add "$dir" "H"  "Mahjong Angel Kiss (ver 1.0, 92047-01 version).mra" "_Mahjong Angel Kiss" "" ""
   add "$dir" "H"  "P-47 Aces (ver 1.1).mra" "_P-47 Aces" "" "STG"
   add "$dir" "H"  "Ryuusei Janshi Kirara Star (ver 1.0, 92047-01 version).mra" "_Ryuusei Janshi Kirara Star" "" ""
   add "$dir" "H"  "Tetris Plus (ver 1.0).mra" "_Tetris Plus" "" ""
   add "$dir" "H"  "Tetris Plus 2 (ver 1.0, MegaSystem 32 Version).mra" "_Tetris Plus 2" "" ""
   add "$dir" "H"  "Vs. Janshi Brandnew Stars (Ver 1.1, MegaSystem 32 Version).mra" "_Vs. Janshi Brandnew Stars" "" ""
   add "$dir" "H"  "World PK Soccer V2 (ver 1.1).mra" "_World PK Soccer V2" "" "SPO"

   dot
fi
