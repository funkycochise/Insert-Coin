#!/bin/bash  
source ./folders/functions.sh

dir="_Technos"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "XSleenaBA.mra" "_Xain'd Sleena"
add "$dir" "V" "XSleenaB.mra" "_Xain'd Sleena"

add "$dir" "H" "Double Dragon (Japan).mra" "_Double Dragon"
add "$dir" "H" "Double Dragon II The Revenge (World).mra" "_Double Dragon II The Revenge"
add "$dir" "H" "V'Ball (US) [bl].mra" "_V'Ball"
add "$dir" "H" "V'Ball (US).mra" "_V'Ball"
add "$dir" "H" "Renegade (US bootleg).mra" "_Renegade"

dot