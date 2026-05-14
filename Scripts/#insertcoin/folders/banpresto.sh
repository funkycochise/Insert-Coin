#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep banpresto $names)
else
   banpresto="_Banpresto"
fi
dir=$banpresto

resh=$(exist "Bishoujo Senshi Sailor Moon (Version 95-03-22B, Japan).mra")
resv=$(exist "Akuu Gallet (Japan).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Akuu Gallet (Japan).mra" "_Air Gallet" "" "STG"
   add "$dir" "V" "Mazinger Z (Japan).mra" "_Mazinger Z" "" "STG"

   add "$dir" "H" "Bishoujo Senshi Sailor Moon (Version 95-03-22B, Japan).mra" "_Pretty Soldier Sailor Moon" "" "BEA"
   add "$dir" "H" "SD Gundam Psycho Salamander no Kyoui.mra" "_SD Gundam Psycho Salamander no Kyoui" "ACT" 

   dot
fi
