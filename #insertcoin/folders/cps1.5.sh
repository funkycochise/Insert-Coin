#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep cps15 $names)
else
   cps15="_CPS15"
fi
if [ -f "$names" ]; then
   source <(grep capcom $names)
else
   capcom="_Capcom-Mitchell"
fi
if [ "$show_system" == "1" ]; then
   dir=$cps15
else
   dir=$capcom
fi

resh=$(exist "The Punisher (World 930422).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "H"  "Cadillacs and Dinosaurs (World 930201).mra" "_Cadillacs and Dinosaurs" "" "BEA"
   add "$dir" "H"  "Muscle Bomber Duo Ultimate Team Battle (World 931206).mra" "_Muscle Bomber Duo" "" "VSF"
   add "$dir" "H"  "Saturday Night Slam Masters (World 930713).mra" "_Saturday Night Slam Masters" "" "VSF"
   add "$dir" "H"  "The Punisher (World 930422).mra" "_The Punisher" "" "BEA"
   add "$dir" "H"  "Warriors of Fate (World 921031).mra" "_Warriors of Fate" "" "ACT"
   dot
fi