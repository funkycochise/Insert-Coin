#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Ninjakun.mra")
if [ "$res" == "1" ]; then
   dir="_Upl"
   outdir=$1

   #addgame "Combat Hawk.mra" "_Combat Hawk"
   add "$dir" "H" "Ninjakun.mra" "_Ninjakun Majou no Bouken" "" "ACT"
   add "$dir" "H" "Penguin-Kun Wars.mra" "_Penguin-Kun Wars" "" "ACT"
   add "$dir" "H" "Raiders5.mra" "_Raiders5"
   add "$dir" "H" "Nova 2001.mra" "_Nova 2001" "" "STG"
   dot
fi