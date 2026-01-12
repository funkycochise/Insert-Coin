#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep segasys2 $names)
else
   segasys2="_Sega-System-2"
fi
if [ -f "$names" ]; then
   source <(grep sega $names)
else
   sega="_Sega"
fi
if [ "$show_system" == "1" ]; then
   dir=$segasys2
else
   dir=$sega
fi

resh=$(exist "Choplifter (unprotected).mra")
resv=$(exist "Toki no Senshi - Chrono Soldier [MC-8123, 317-0040].mra" "_Toki no Senshi")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Toki no Senshi - Chrono Soldier [MC-8123, 317-0040].mra" "_Toki no Senshi" "" "ACT"

   add "$dir" "H" "Brain.mra" "_Brain" "" "STG"
   add "$dir" "H" "Choplifter (unprotected).mra" "_Choplifter" "" "STG"
   add "$dir" "H" "Heavy Metal (315-5135).mra" "_Heavy Metal" "" "STG"
   add "$dir" "H" "UFO Senshi Youko Chan [MC-8123, 317-0064].mra" "_UFO Senshi Youko Chan" "" "ACT"
   add "$dir" "H" "Wonder Boy (System 2, Set 1, Japan) [315-5177].mra" "_Wonder Boy" "" "ACT"
   add "$dir" "H" "Wonder Boy in Monster Land (Japan New Ver., MC-8123, 317-0043).mra" "_Wonder Boy in Monster Land" "" "ACT"
   dot
fi