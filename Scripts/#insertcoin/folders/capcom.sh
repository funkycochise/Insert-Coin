#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep capcom $names)
else
   capcom="_Capcom-Mitchell"
fi
dir=$capcom

resh=$(exist "Black Tiger.mra")
resv=$(exist "1942 (Revision B).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V"  "Avengers (US, revision C).mra" "_Avengers" "" "BEA"
   add "$dir" "V"  "1942 (Revision B).mra" "_1942" "" "STG"
   add "$dir" "V"  "1943 Kai Midway Kaisen (Japan).mra" "_1943 The Battle of Midway" "" "STG"
   add "$dir" "V"  "1943 The Battle of Midway (Euro).mra" "_1943 The Battle of Midway" "" "STG"
   add "$dir" "V"  "1943 The Battle of Midway Mark II (US).mra" "_1943 The Battle of Midway" "" "STG"
   add "$dir" "V"  "Block Block (World 911219 Joystick).mra" "_Block Block"
   add "$dir" "V"  "Commando (World).mra" "_Commando" "" "RNG"
   add "$dir" "V"  "Exed Exes.mra" "_Exed Exes" "" "STG"
   add "$dir" "V"  "Gun.Smoke (World, 1985-11-15).mra" "_Gun.Smoke" "" "RNG"
   add "$dir" "V"  "Legendary Wings (US set 1).mra" "_Legendary Wings" "" "STG"
   add "$dir" "V"  "The Speed Rumbler (set 1).mra" "_The Speed Rumbler" "" "ACT"
   add "$dir" "V"  "Vulgus (set 1).mra" "_Vulgus" "" "STG"

   add "$dir" "H"  "Bionic Commando (Euro).mra" "_Bionic Commando" "" "ACT"
   add "$dir" "H"  "Black Tiger.mra" "_Black Tiger" "" "ACT"
   add "$dir" "H"  "Capcom World (Japan).mra" "_Capcom World"
   add "$dir" "H"  "Dokaben (Japan).mra" "_Dokaben" "" "SPO"
   add "$dir" "H"  "F-1 Dream.mra" "_F-1 Dream" "" "SPO"
   add "$dir" "H"  "Ghosts'n Goblins (World Set 1).mra" "_Ghosts'n Goblins" "" "ACT"
   add "$dir" "H"  "Pang (World).mra" "_Pang" "" "ACT"
   add "$dir" "H"  "Pirate Ship Higemaru.mra" "_Pirate Ship Higemaru" "" "ACT"
   add "$dir" "H"  "Section Z (set 1).mra" "_SectionZ" "" "STG"
   add "$dir" "H"  "Side Arms - Hyper Dyne (World, 861129).mra" "_Side Arms" "" "STG"
   add "$dir" "H"  "SonSon.mra" "_SonSon" "" "ACT"
   add "$dir" "H"  "Street Fighter (US, set 1).mra" "_Street Fighter" "" "VSF"
   add "$dir" "H"  "Super Pang (World 900914).mra" "_Super Pang" "" "ACT"
   add "$dir" "H"  "Tiger Road (US).mra" "_Tiger Road" "" "ACT"
   add "$dir" "H"  "Trojan (US set 1).mra" "_Trojan" "" "RNG"
   dot
fi