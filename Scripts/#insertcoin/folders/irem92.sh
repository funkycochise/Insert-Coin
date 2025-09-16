#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep irem92 $names)
else
   irem92="_Irem M92"
fi
if [ -f "$names" ]; then
   source <(grep irem $names)
else
   irem="_Irem"
fi
dir=$irem
if [ "$show_system" == "1" ]; then
   dir=$irem92
else
   dir=$irem
fi

resh=$(exist "In The Hunt (World).mra")
resv=$(exist "Lethal Thunder (World).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
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