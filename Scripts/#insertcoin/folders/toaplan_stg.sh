#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep toaplan_stg $names)
else
   toaplan_stg="_Toaplan_STG"
fi
dir=$toaplan_stg

resh=$(exist "Kyukyoku Tiger (Japan, 2P Co-op).mra")
resv=$(exist "Truxton - Tatsujin.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Hellfire (2P set).mra" "_Hellfire" "" "STG"
   add "$dir" "V" "Alcon Bootleg.mra" "_SlapFight" "" "STG"
   add "$dir" "V" "Kyukyoku Tiger (Japan, 2P Co-op).mra" "_Twin Cobra" "" "STG"
   add "$dir" "V" "Out Zone.mra" "_Out Zone" "" "RNG"
   add "$dir" "V" "Same! Same! Same! (2P Set).mra" "_Fire Shark" "" "STG"
   add "$dir" "V" "SlapFight Bootleg.mra" "_SlapFight" "" "STG"
   add "$dir" "V" "Truxton - Tatsujin.mra" "_Truxton" "" "STG"
   add "$dir" "V" "Truxton II - Tatsujin Oh.mra" "_Truxton II" "" "STG"
   add "$dir" "V" "Vimana (Japan).mra" "_Vimana" "" "STG"
   add "$dir" "H" "Zero Wing (2P set).mra" "_Zero Wing" "" "STG"
dot
fi
