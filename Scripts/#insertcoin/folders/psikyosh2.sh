#!/bin/bash
source ./folders/functions.sh
dir=$psikyosh2

resh=$(exist "Tetris The Absolute - The Grand Master 2.mra")
resv=$(exist "Strikers 1945 II.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V"  "Dragon Blaze.mra" "_Dragon Blaze" "" "STG"
   add "$dir" "V"  "Gunbarich.mra" "_Gunbarich" "" "STG"
   add "$dir" "V"  "Gunbird 2 (set 1).mra" "_Gunbird 2" "" "STG"
   add "$dir" "V"  "Gunbird 2 (set 2).mra" "_Gunbird 2" "" "STG"  
   add "$dir" "V"  "Strikers 1945 II.mra" "_Strikers 1945 II" "" "STG"
   add "$dir" "V"  "Strikers 1945 III.mra" "_Strikers 1945 III" "" "STG"

   add "$dir" "H"  "Daraku Tenshi The Fallen Angels.mra" "_Daraku Tenshi The Fallen Angels" "" ""
   add "$dir" "H"  "Mahjong G-Taste.mra" "_Mahjong G-Taste" "" "PUZ"
   add "$dir" "H"  "Sol Divide Sword Of Darkness (Korea).mra" "_Sol Divide Sword Of Darkness" "" "STG"
   add "$dir" "H"  "Sol Divide Sword Of Darkness.mra" "_Sol Divide Sword Of Darkness" "" "STG"
   add "$dir" "H"  "Tetris The Absolute - The Grand Master 2.mra" "_Tetris The Absolute - The Grand Master 2" "" "PUZ"
   add "$dir" "H"  "Tetris The Absolute - The Grand Master 2 Plus.mra" "_Tetris The Absolute - The Grand Master 2" "" "PUZ"
   add "$dir" "H"  "Space Bomber (ver. B).mra" "_Space Bomber" "" ""
   add "$dir" "H"  "Space Bomber.mra" "_Space Bomber" "" ""

   dot
fi
