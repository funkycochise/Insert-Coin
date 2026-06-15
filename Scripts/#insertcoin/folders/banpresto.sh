#!/bin/bash
source ./folders/functions.sh
dir=$banpresto

resh=$(exist "Bishoujo Senshi Sailor Moon (Version 95-03-22B, Japan).mra")
resv=$(exist "Air Gallet (Europe).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Akuu Gallet (Japan).mra" "_Air Gallet" "" "STG"
   add "$dir" "V" "Super Dimension Fortress Macross (Japan).mra" "_Super Dimension Fortress Macross" "" "STG"
   add "$dir" "V" "Mazinger Z (Japan).mra" "_Mazinger Z" "" "STG"
   add "$dir" "H" "Bishoujo Senshi Sailor Moon (Version 95-03-22B, Japan).mra" "_Pretty Soldier Sailor Moon" "" "BEA"
   add "$dir" "H" "SD Gundam Psycho Salamander no Kyoui.mra" "_SD Gundam Psycho Salamander no Kyoui" "" "ACT" 

   add "$dir" "V" "Air Gallet (Europe).mra" "_Air Gallet" "" "STG"
   add "$dir" "V" "Hotdog Storm (Korea).mra" "_Hotdog Storm" "" "STG"
   add "$dir" "V" "Mazinger Z (World).mra" "_Mazinger Z" "" "STG"

   add "$dir" "H" "Metamoqester (World).mra" "_Metamoqester"
   add "$dir" "H" "Oni - The Ninja Master (Japan).mra" "_Oni - The Ninja Master"
   add "$dir" "H" "Pretty Soldier Sailor Moon (Version 95-03-22B, Europe).mra" "_Pretty Soldier Sailor Moon" "" "BEA"
   dot
fi
