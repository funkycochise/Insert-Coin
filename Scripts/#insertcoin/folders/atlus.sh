#!/bin/bash
source ./folders/functions.sh
dir=$atlus

resh=$(exist "Gauntlet (rev 14).mra")
resv=$(exist "Centipede (Rev 4).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V" "Breakout (TTL).mra" "_Breakout"
   add "$dir" "V" "Centipede (Rev 4).mra" "_Centipede"
   add "$dir" "V" "Kangaroo.mra" "_Kangaroo" "" "ACT"
   add "$dir" "V" "Millipede.mra" "_Millipede"
   add "$dir" "V" "Super Breakout (Rev 04).mra" "_Super Breakout"
   add "$dir" "V" "Super Xevious.mra" "_Xevious"
   add "$dir" "V" "Toobin.mra" "_Toobin" "" "ACT"
   add "$dir" "V" "Tron.mra" "_Tron"
   add "$dir" "V" "Xevious.mra" "_Xevious" "" "STG"
   add_rep "$dir" "V" "_Tetris (Atari)"  "" "" "PUZ"

   add "$dir" "H" "Blaze On (Japan).mra" "_Blaze On"
 
   dot
fi