#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep irem62 $names)
else
   irem62="_Irem M62"
fi
if [ -f "$names" ]; then
   source <(grep irem $names)
else
   irem="_Irem"
fi
dir=$irem
if [ "$show_system" == "1" ]; then
   dir=$irem62
else
   dir=$irem
fi

resh=$(exist "Kung-Fu Master (W).mra")
resv=$(exist "Youjyuden (JP).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V" "The Battle-Road.mra" "_Battle Road"
   add "$dir" "V" "Youjyuden (JP).mra" "_Youjyuden"
   add "$dir" "H" "Horizon (Irem).mra" "_Horizon" "" "ACT"
   add "$dir" "H" "Kid Niki - Radical Ninja (W).mra" "_Kid Niki - Radical Ninja" "" "ACT"
   add "$dir" "H" "Kung-Fu Master (W).mra" "_Kung-Fu Master" "" "ACT"
   add "$dir" "H" "Lode Runner (Set 1).mra" "_Lode Runner" "" "ACT"
   add "$dir" "H" "Lode Runner II - The Bungeling Strikes Back.mra" "_Lode Runner II" "" "ACT"
   add "$dir" "H" "Lode Runner III - The Golden Labyrinth.mra" "_Lode Runner III" "" "ACT"
   add "$dir" "H" "Lode Runner IV - Teikoku Karano Dasshutsu (JP).mra" "_Lode Runner IV" "" "ACT"
   add "$dir" "H" "Spelunker II - 23 no Kagi (JP).mra" "_Spelunker II"
   add "$dir" "H" "Spelunker.mra" "_Spelunker"
   dot
fi