#!/bin/bash
source ./folders/functions.sh

if [ "$show_system" == "1" ]; then
   dir=$konamigx
else
   dir=$konami
fi

resv=$(exist "Twin Bee Yahhoo! (ver JAA).mra")
resh=$(exist "Sexy Parodius (ver JAA).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Crazy Cross (ver EAA).mra" "_Crazy Cross" "" "PUZ"
   add "$dir" "H" "Daisu-Kiss (ver JAA).mra" "_Daisu-Kiss" "" "PUZ"
   add "$dir" "H" "Dragoon Might (ver AAB).mra" "_Dragoon Might" "" "FTG"
   add "$dir" "H" "Fantastic Journey (ver EAA).mra" "_Fantastic Journey" "" "ACT"
   add "$dir" "H" "Lethal Enforcers II Gun Fighters (ver EAA).mra" "_Lethal Enforcers II Gun Fighters" "" "SHO"
   add "$dir" "H" "Salamander 2 (ver JAA).mra" "_Salamander 2" "" "STG"
   add "$dir" "H" "Sexy Parodius (ver JAA).mra" "_Sexy Parodius" "" "STG"
   add "$dir" "V" "Taisen Tokkae-dama (ver JAA).mra" "_Taisen Tokkae-dama" "" "PUZ"
   add "$dir" "V" "Tokimeki Memorial Taisen Puzzle-dama (ver JAB).mra" "_Tokimeki Memorial Taisen Puzzle-dama" "" "PUZ"
   add "$dir" "H" "Twin Bee Yahhoo! (ver JAA).mra" "_Twin Bee Yahhoo!" "" "STG"
   add "$dir" "H" "Winning Spike (ver EAA).mra" "_Winning Spike" "" "SPT"
   dot
fi
