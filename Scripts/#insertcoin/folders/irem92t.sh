#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep irem92t $names)
else
   irem92t="_Irem M92t"
fi
if [ -f "$names" ]; then
   source <(grep irem $names)
else
   irem="_Irem"
fi
dir=$irem
if [ "$show_system" == "1" ]; then
   dir=$irem92t
else
   dir=$irem
fi

resh=$(exist "_In The Hunt (Turbo)")
resv=$(exist "_Lethal Thunder (Turbo)")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   rep "$dir" "V" "_Lethal Thunder (Turbo)"  "_Lethal Thunder (Turbo)" "" "STG"

   rep "$dir" "H" "_Blade Master (Turbo)"  "_Blade Master (Turbo)" "" "BEA"
   rep "$dir" "H" "_Dream Soccer '94 (Turbo)"  "_Dream Soccer '94 (Turbo)" "" "SPO"
   rep "$dir" "H" "_Gun Force II (Turbo)"  "_Gun Force II (Turbo)" "" "RNG"
   rep "$dir" "H" "_Gunforce - Battle Fire Engulfed Terror Island (Turbo)"  "_Gunforce - Battle Fire Engulfed Terror Island (Turbo)" "" "RNG"
   rep "$dir" "H" "_Hook (Turbo)"  "_Hook (Turbo)" "" "BEA"
   rep "$dir" "H" "_In The Hunt (Turbo)"  "_In The Hunt (Turbo)" "" "STG"
   rep "$dir" "H" "_Major Title 2 (Turbo)"  "_Major Title 2 (Turbo)" "" "SPO"
   rep "$dir" "H" "_Mystic Riders (Turbo)"  "_Mystic Riders (Turbo)" "" "STG"
   rep "$dir" "H" "_Ninja Baseball Bat Man (Turbo)"  "_Ninja Baseball Bat Man (Turbo)" "" "BEA"
   rep "$dir" "H" "_R-Type Leo (Turbo)"  "_R-Type Leo (Turbo)" "" "STG"
   rep "$dir" "H" "_Superior Soldiers (Turbo)"  "_Superior Soldiers (Turbo)" "" "VSF"
   rep "$dir" "H" "_Undercover Cops (Turbo)"  "_Undercover Cops (Turbo)" "" "BEA"
   dot
fi