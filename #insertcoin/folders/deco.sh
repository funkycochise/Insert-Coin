#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep deco $names)
else
   deco="_DataEast-Deco"
fi
dir=$deco

resh=$(exist "Chelnov - Atomic Runner (World).mra")
resv=$(exist "Burger Time (Set 1).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Burger Time (Set 1).mra" "_Burger Time" "" "ACT"
   add "$dir" "V" "Burnin' Rubber.mra" "_Burning Rubber" "" "ACT"
   add "$dir" "V" "Heavy Barrel (World).mra" "_Heavy Barrel" "" "RNG"
   add "$dir" "V" "Karate Champ (US).mra" "_Karate Champ" "" "SPO"
   add "$dir" "V" "Wonder Planet (Japan).mra" "_Wonder Planet" "" "STG"
   add "$dir" "H" "Bad Dudes vs. Dragonninja (US, revision 1).mra" "_Bad Dudes vs. Dragonninja" "" "ACT"
   add "$dir" "H" "Boulder Dash - Boulder Dash Part 2 (World).mra" "_Boulder Dash" "" "ACT"
   add "$dir" "H" "Chelnov - Atomic Runner (World).mra" "_Chelnov" "" "ACT"
   add "$dir" "H" "Hippodrome (US).mra" "_Hippodrome" "" "VSF"
   add "$dir" "H" "Karnov (US, rev 6).mra" "_Karnov" "" "RNG"
   add "$dir" "H" "Midnight Resistance (World, set 1).mra" "_Midnight Resistance" "" "RNG"
   add "$dir" "H" "Robocop (World, revision 4).mra" "_Robocop" "" "RNG"
   add "$dir" "H" "Secret Agent (World, revision 3).mra" "_Secret Agent" "" "RNG"
   add "$dir" "H" "Express Raider.mra" "_Express Raider" "" "RNG"
   add "$dir" "H" "Western Express (Japan, rev 4).mra" "_Express Raider" "" "RNG"
   dot
fi