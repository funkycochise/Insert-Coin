#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep cave $names)
else
   cave="_Cave 68000"
fi
dir=$cave

resh=$(exist "Puzzle Uo Poko.mra")
resv=$(exist "DoDonPachi.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Akuu Gallet (Japan).mra" "_Air Gallet" "" "STG"
   add "$dir" "V" "Dangun Feveron.mra" "_Dangun Feveron" "" "STG"
   add "$dir" "V" "Fever SOS.mra" "_Dangun Feveron" "" "STG"
   add "$dir" "V" "DoDonPachi.mra" "_DoDonPachi" "" "STG"
   add "$dir" "V" "DonPachi.mra" "_DonPachi" "" "STG"
   add "$dir" "V" "ESP Ra.De..mra" "_ESP Ra.De" "" "STG"
   add "$dir" "V" "Guwange.mra" "_Guwange" "" "STG"
   add "$dir" "V" "Hotdog Storm.mra" "_Hotdog Storm" "" "STG"
   add "$dir" "V" "Mazinger Z (Japan).mra" "_Mazinger Z" "" "STG"

   add "$dir" "H" "Gaia Crusaders.mra" "_Gaia Crusaders"
   add "$dir" "H" "Puzzle Uo Poko.mra" "_Puzzle Uo Poko" "" "PUZ"
   add "$dir" "H" "Thunder Heroes.mra" "_Thunder Heroes"
   add "$dir" "H" "Bishoujo Senshi Sailor Moon (Version 95-03-22B, Japan).mra" "_Pretty Soldier Sailor Moon" "" "BEA"

   dot
fi
