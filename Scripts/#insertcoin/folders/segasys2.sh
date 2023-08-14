#!/bin/bash  
source ./folders/functions.sh

dir="_Sega-System-2"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Toki no Senshi - Chrono Soldier [MC-8123, 317-0040].mra" "_Toki no Senshi"

add "$dir" "H" "Brain.mra" "_Brain"
add "$dir" "H" "Choplifter (unprotected).mra" "_Choplifter"
add "$dir" "H" "Heavy Metal (315-5135).mra" "_Heavy Metal"
add "$dir" "H" "UFO Senshi Youko Chan [MC-8123, 317-0064].mra" "_UFO Senshi Youko Chan"
add "$dir" "H" "Wonder Boy (System 2, Set 1, Japan) [315-5177].mra" "_Wonder Boy"
add "$dir" "H" "Wonder Boy in Monster Land (Japan New Ver., MC-8123, 317-0043).mra" "_Wonder Boy in Monster Land"

dot