#!/bin/bash
source ./folders/functions.sh
loadsetup
dir="_Irem M92"
if [ "$merge_system" == "1" ]; then
      dir="_Irem"
fi

res=$(exist "In The Hunt (World).mra")
if [ "$res" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Lethal Thunder (World).mra" "_Lethal Thunder" "" "STG"

   add "$dir" "H" "Blade Master (World).mra" "_Blade Master" "" "BEA"
   add "$dir" "H" "Gun Force II (US).mra" "_Gun Force II" "" "RNG"
   add "$dir" "H" "Gunforce - Battle Fire Engulfed Terror Island (World).mra" "_Gunforce - Battle Fire Engulfed Terror Island" "" "RNG"
   add "$dir" "H" "Hook (World).mra" "_Hook" "" "BEA"
   add "$dir" "H" "In The Hunt (World).mra" "_In The Hunt" "" "STG"
   add "$dir" "H" "Major Title 2 (World, set 1).mra" "_Major Title 2" "" "SPO"
   add "$dir" "H" "Mystic Riders (World).mra" "_Mystic Riders" "" "STG"
   add "$dir" "H" "Ninja Baseball Bat Man (World).mra" "_Ninja Baseball Bat Man" "" "BEA"
   add "$dir" "H" "R-Type Leo (World).mra" "_R-Type Leo" "" "STG"
   add "$dir" "H" "Superior Soldiers (US).mra" "_Superior Soldiers" "" "VSF"
   add "$dir" "H" "Undercover Cops (World).mra" "_Undercover Cops" "" "BEA"
   dot
fi