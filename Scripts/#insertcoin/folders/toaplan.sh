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
resv=$(exist "Truxton - Tatsujin.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Alcon Bootleg.mra" "_SlapFight" "" "STG"
   add "$dir" "V" "Kyukyoku Tiger (Japan, 2P Co-op).mra" "_Twin Cobra" "" "STG"
   add "$dir" "V" "Out Zone.mra" "_Out Zone" "" "RNG"
   add "$dir" "V" "Performan (Japan).mra" "_Performan"
   add "$dir" "V" "Rally Bike - Dash Yarou.mra" "_Rally Bike"
   add "$dir" "V" "Same! Same! Same! (2P Set).mra" "_Fire Shark" "" "STG"
   add "$dir" "V" "SlapFight Bootleg.mra" "_SlapFight" "" "STG"
   add "$dir" "V" "Truxton - Tatsujin.mra" "_Truxton" "" "STG"
   add "$dir" "V" "Truxton II - Tatsujin Oh.mra" "_Truxton II" "" "STG"
   add "$dir" "V" "Vimana (Japan).mra" "_Vimana" "" "STG"

   add "$dir" "H" "Demon's World - Horror Story (Set 3).mra" "_Demon's World" "" "RNG"
   add "$dir" "H" "Hellfire (2P set).mra" "_Hellfire" "" "STG"
   add "$dir" "H" "Pipi & Bibis - Whoopee!! (Z80 sound cpu, set 1).mra" "_Pipi & Bibis" "" "ACT"
   add "$dir" "H" "Snow Bros. 2 - With New Elves - Otenki Paradise (Hanafram).mra" "_Snow Bros. 2"
   add "$dir" "H" "Zero Wing (2P set).mra" "_Zero Wing" "" "STG"
   add "$dir" "H" "Teki Paki.mra" "_Teki Paki" "" "PUZ"
   dot
fi
