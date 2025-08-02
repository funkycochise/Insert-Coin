#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep taito $names)
else
   taito="_Taito"
fi
dir=$taito

resh=$(exist "Bubble Bobble (Japan, Ver 0.1).mra")
resv=$(exist "Arkanoid (W).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Alcon Bootleg.mra" "_SlapFight" "" "STG"
   add "$dir" "V" "Arkanoid - Revenge of DOH (World).mra" "_Arkanoid II"
   add "$dir" "V" "Arkanoid (JP).mra" "_Arkanoid"
   add "$dir" "V" "Arkanoid (Unl. lives) [hb].mra" "_Arkanoid"
   add "$dir" "V" "Arkanoid (US).mra" "_Arkanoid"
   add "$dir" "V" "Arkanoid (W).mra" "_Arkanoid"
   add "$dir" "V" "Balloon Bomber.mra" "_Balloon Bomber"
   add "$dir" "V" "Bronx.mra" "_Bronx"
   add "$dir" "V" "Colony 7 (Set 1).mra" "_Colony7" "" "ACT"
   add "$dir" "V" "Crazy Balloon.mra" "_Crazy Balloon"
   add "$dir" "V" "Dr. Toppel's Adventure (World).mra" "_Dr. Toppel's Adventure"
   add "$dir" "V" "Extermination (World).mra" "_Extermination"
   add "$dir" "V" "Kageki (World).mra" "_Kageki" "" "BEA"
   add "$dir" "V" "Kyukyoku Tiger (Japan, 2P Co-op).mra" "_Twin Cobra" "" "STG"
   add "$dir" "V" "Lunar Rescue.mra" "_Lunar Rescue"
   add "$dir" "V" "Lupin III (Set 2).mra" "_Lupin III"
   add "$dir" "V" "Polaris.mra" "_Polaris"
   add "$dir" "V" "Rally Bike - Dash Yarou.mra" "_Rally Bike"
   add "$dir" "V" "SlapFight Bootleg.mra" "_SlapFight" "" "STG"
   add "$dir" "V" "Space Chaser.mra" "_Space Chaser"
   add "$dir" "V" "Space Invaders Part II (Taito, Bigger ROMs).mra" "_Space Invaders Part II" "" "STG"
   add "$dir" "V" "Space Invaders.mra" "_Space Invaders" "" "STG"
   add "$dir" "V" "Tiger Heli Bootleg.mra" "_Tiger Heli" "" "STG"
   add "$dir" "V" "Tokio - Scramble Formation (newer).mra" "_Tokio" "" "STG"

   add "$dir" "H" "Bubble Bobble (Japan, Ver 0.1).mra" "_Bubble Bobble" "" "ACT"
   add "$dir" "H" "Chuka Taisen (World) (P0-028-A PCB).mra" "_Chuka Taisen" "" "STG"
   add "$dir" "H" "Insector X (World).mra" "_Insector X" "" "STG"
   add "$dir" "H" "Kick And Run.mra" "_Kick And Run"
   add "$dir" "H" "Onna Sanshirou - Typhoon Gal.mra" "_Onna Sanshirou" "" "VSF"
   add "$dir" "H" "Plump Pop (Japan).mra" "_Plump Pop"
   add "$dir" "H" "Rastan (World Rev 1).mra" "_Rastan" "" "ACT"
   add "$dir" "H" "Rumba Lumber.mra" "_Rumba Lumber" "" ""
   add "$dir" "H" "The FairyLand Story.mra" "_The FairyLand Story" "" "ACT"
   add "$dir" "H" "The NewZealand Story (World, new version) (P0-043A PCB).mra" "_The NewZealand Story" "" "ACT"
   add "$dir" "H" "Victorious Nine.mra" "_Victorious Nine" "" "SPO"
   add "$dir" "H" "N.Y. Captor.mra" "_N.Y. Captor"

   dot
fi
