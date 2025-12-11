#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep toaplan $names)
else
   toaplan="_Toaplan"
fi
dir=$toaplan

resh=$(exist "Demon's World - Horror Story (Set 3).mra")
resv=$(exist "Snow Bros. 2 - With New Elves - Otenki Paradise (Hanafram).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Demon's World - Horror Story (Set 3).mra" "_Demon's World" "" "RNG"
   add "$dir" "H" "Pipi & Bibis - Whoopee!! (Z80 sound cpu, set 1).mra" "_Pipi & Bibis" "" "ACT"
   add "$dir" "H" "Snow Bros. 2 - With New Elves - Otenki Paradise (Hanafram).mra" "_Snow Bros. 2"
   add "$dir" "H" "Teki Paki.mra" "_Teki Paki" "" "PUZ"
   add "$dir" "H" "Zero Wing (2P set).mra" "_Zero Wing" "" "STG"
   add "$dir" "V" "Performan (Japan).mra" "_Performan"
   add "$dir" "V" "Rally Bike - Dash Yarou.mra" "_Rally Bike"
dot
fi
