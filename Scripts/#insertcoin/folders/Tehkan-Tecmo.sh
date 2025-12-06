#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep tecmo $names)
else
   tecmo="_Tehkan-Tecmo"
fi
dir=$tecmo

resh=$(exist "Rygar.mra")
resv=$(exist "Bomb Jack.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Bomb Jack.mra" "_Bomb Jack"
   add "$dir" "V" "Gemini Wing.mra" "_Gemini Wing" "" "STG"
   add "$dir" "V" "Pleiads (Centuri).mra" "_Pleiads" "" "STG"
   add "$dir" "V" "Pleiads (Tehkan).mra" "_Pleiads" "" "STG"
   add "$dir" "V" "StarForce.mra" "_StarForce" "" "STG"
   add "$dir" "V" "Vimana (Japan).mra" "_Vimana" "" "STG"

   add "$dir" "H" "Baluba-louk no Densetsu (Japan).mra" "_Baluba-louk no Densetsu"
   add "$dir" "H" "Raiga - Strato Fighter (US).mra" "_Raiga" "" "STG"
   add "$dir" "H" "Rygar.mra" "_Rygar" "" "ACT"
   add "$dir" "H" "Shadow Warriors (World, set 1).mra" "_Shadow Warriors" "" "BEA"
   add "$dir" "H" "Silkworm.mra" "_Silkworm" "" "STG"
   add "$dir" "H" "Solomon's Key.mra" "_Solomons Key" "" "PUZ"
   add "$dir" "H" "Tehkan World Cup (set 1).mra" "_Tehkan World Cup" "" "SPO"
   add "$dir" "H" "Wild Fang - Tecmo Knight.mra" "_Wild Fang" "" "BEA"
   dot
fi
