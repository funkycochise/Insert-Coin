#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "The Punisher (World 930422).mra")
if [ "$res" == "1" ]; then
   dir="_CPS1.5"
   outdir=$1
   add "$dir" "H"  "Cadillacs and Dinosaurs (World 930201).mra" "_Cadillacs and Dinosaurs" "" "BEA"
   add "$dir" "H"  "Muscle Bomber Duo Ultimate Team Battle (World 931206).mra" "_Muscle Bomber Duo" "" "VSF"
   add "$dir" "H"  "Saturday Night Slam Masters (World 930713).mra" "_Saturday Night Slam Masters" "" "VSF"
   add "$dir" "H"  "The Punisher (World 930422).mra" "_The Punisher" "" "BEA"
   add "$dir" "H"  "Warriors of Fate (World 921031).mra" "_Warriors of Fate" "" "ACT"
   dot
fi