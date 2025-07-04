#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "DoDonPachi.mra")
if [ "$res" == "1" ]; then
   dir="_Cave 68000"
   outdir=$1

   add "$dir" "V" "Dangun Feveron.mra" "_Dangun Feveron" "" "STG"
   add "$dir" "V" "Fever SOS.mra" "_Dangun Feveron" "" "STG"
   add "$dir" "V" "DoDonPachi (Arrange).mra" "_DoDonPachi" "" "STG"
   add "$dir" "V" "DoDonPachi (Japan).mra" "_DoDonPachi" "" "STG"
#  add "$dir" "V" "DoDonPachi (Japan, No Warn).mra" "_DoDonPachi" "" "STG"
   add "$dir" "V" "DoDonPachi Trainer (Japan).mra" "_DoDonPachi" "" "STG"
   add "$dir" "V" "DoDonPachi.mra" "_DoDonPachi" "" "STG"
   add "$dir" "V" "DonPachi.mra" "_DonPachi" "" "STG"
   add "$dir" "V" "DonPachi (Japan).mra" "_DonPachi" "" "STG"
   add "$dir" "V" "ESP Ra.De..mra" "_ESP Ra.De" "" "STG"
   add "$dir" "V" "ESP Ra.De. (Japan).mra" "_ESP Ra.De" "" "STG"
   add "$dir" "V" "Guwange.mra" "_Guwange" "" "STG"
   add "$dir" "V" "Guwange (Special).mra" "_Guwange" "" "STG"
   add "$dir" "V" "Hotdog Storm.mra" "_Hotdog Storm" "" "STG"
   add "$dir" "V" "Mazinger Z (Japan).mra" "_Mazinger Z" "" "STG"

   add "$dir" "H" "Gaia Crusaders.mra" "_Gaia Crusaders"
   add "$dir" "H" "Puzzle Uo Poko.mra" "_Puzzle Uo Poko" "" "PUZ"
   add "$dir" "H" "Puzzle Uo Poko (Japan).mra" "_Puzzle Uo Poko" "" "PUZ"
   add "$dir" "H" "Thunder Heroes.mra" "_Thunder Heroes"
   add "$dir" "H" "Bishoujo Senshi Sailor Moon (Version 95-03-22B, Japan).mra" "_Pretty Soldier Sailor Moon" "" "BEA"

   dot
fi
