#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep upl $names)
else
   upl="_Upl"
fi
dir=$upl

resh=$(exist "Ninjakun.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   #addgame "Combat Hawk.mra" "_Combat Hawk"
   add "$dir" "H" "Ninjakun.mra" "_Ninjakun Majou no Bouken" "" "ACT"
   add "$dir" "H" "Penguin-Kun Wars.mra" "_Penguin-Kun Wars" "" "ACT"
   add "$dir" "H" "Raiders5.mra" "_Raiders5"
   add "$dir" "H" "Nova 2001.mra" "_Nova 2001" "" "STG"
   dot
fi