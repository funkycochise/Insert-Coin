#!/bin/bash  
source ./folders/functions.sh

dir="_Tehkan-Tecmo"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Bomb Jack.mra" "_Bomb Jack"
add "$dir" "V" "Gemini Wing.mra" "_Gemini Wing"
add "$dir" "V" "Pleiads (Centuri).mra" "_Pleiads"
add "$dir" "V" "Pleiads (Tehkan).mra" "_Pleiads"
add "$dir" "V" "Pleiads.mra" "_Pleiads"
add "$dir" "V" "Vimana (Japan).mra" "_Vimana"

add "$dir" "H" "Rygar.mra" "_Rygar"
add "$dir" "H" "Silkworm.mra" "_Silkworm"
add "$dir" "H" "Solomon's Key.mra" "_Solomons Key"

dot