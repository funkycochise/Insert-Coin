#!/bin/bash  
source ./folders/functions.sh

dir="_Tehkan-Tecmo"
outdir=$1
loadsetup

add "$dir" "V" "Bomb Jack.mra" "_Bomb Jack"
add "$dir" "V" "Gemini Wing.mra" "_Gemini Wing" "" "STG"
add "$dir" "V" "Pleiads (Centuri).mra" "_Pleiads" "" "STG"
add "$dir" "V" "Pleiads (Tehkan).mra" "_Pleiads" "" "STG"
add "$dir" "V" "Pleiads.mra" "_Pleiads" "" "STG" "" "STG"
add "$dir" "V" "Vimana (Japan).mra" "_Vimana" "" "STG"

add "$dir" "H" "Rygar.mra" "_Rygar" "" "ACT"
add "$dir" "H" "Silkworm.mra" "_Silkworm" "" "STG"
add "$dir" "H" "Solomon's Key.mra" "_Solomons Key" "" "PUZ"

dot