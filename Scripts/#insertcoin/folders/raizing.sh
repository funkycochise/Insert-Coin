#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep raizing $names)
else
   raizing="_Raizing-8ing"
fi
dir=$raizing

resv=$(exist "Armed Police Batrider (Japan, B Version) (Fri Feb 13 1998).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V"  "Armed Police Batrider (Japan, B Version) (Fri Feb 13 1998).mra" "_Armed Police Batrider" "" "STG"
   add "$dir" "V"  "Battle Bakraid - Unlimited Version (Japan) (Tue Jun 8 1999).mra" "_Battle Bakraid" "" "STG"
   add "$dir" "V"  "Battle Garegga (Europe - USA - Japan - Asia) (Sat Feb 3 1996).mra" "_Battle Garegga" "" "STG"
   add "$dir" "V"  "Shippu Mahou Daisakusen (Japan).mra" "_Kingdom Grandprix" "" "STG"
   rep "$dir" "V" "_Kingdom Grandprix"  "_Kingdom Grandprix" "" "STG"
   add "$dir" "V"  "Mahou Daisakusen (Japan).mra" "_Sorcer Striker" "" "STG"
   rep "$dir" "V" "_Sorcer Striker"  "_Sorcer Striker" "" "STG"

   dot
else
   echo -e "NF raizing mras\r" >> /media/fat/Scripts/#insertcoin/out.txt
fi