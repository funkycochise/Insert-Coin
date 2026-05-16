#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep success $names)
else
   success="_Success"
fi
dir=$success

resh=$(exist "D-Con.mra")
resv=$(exist "Akuu Gallet (Japan).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Cotton (set 4, World) (FD1094 317-0181a).mra" "_Cotton" "" "STG"
   add "$dir" "H" "Cotton 2 (JUET 970902 V1.000).mra" "_Cotton 2" "" "STG"
   add "$dir" "H" "Cotton Boomerang (JUET 980709 V1.000).mra" "_Cotton Boomerang" "" "STG"
   add "$dir" "H" "D-Con.mra" "_D-Con" "" "STG"
   add "$dir" "H" "Guardian Force (JUET 980318 V0.105).mra" "_Guardian Force"
   add "$dir" "H" "Karaoke Quiz Intro Don Don! (J 960213 V1.000).mra" "_Karaoke Quiz Intro Don Don!"
   add "$dir" "H" "Othello Shiyouyo (J 980423 V1.002).mra" "_Othello Shiyouyo"
   add "$dir" "H" "RyuKyu (Rev A, Japan) (FD1094 317-5023A).mra" "_RyuKyu"

   dot
fi
