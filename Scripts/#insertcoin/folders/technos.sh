#!/bin/bash  
source ./folders/functions.sh

dir="_Technos"
outdir=$1
horizontal=$2
vertical=$3
stg_horizontal=$4
stg_vertical=$5

add "$dir" "V" "XSleenaBA.mra" "_Xain'd Sleena" "" "ACT"
add "$dir" "V" "XSleenaB.mra" "_Xain'd Sleena" "" "ACT"

add "$dir" "H" "Double Dragon (Japan).mra" "_Double Dragon" "" "BEA"
add "$dir" "H" "Double Dragon II The Revenge (World).mra" "_Double Dragon II The Revenge" "" "BEA"
add "$dir" "H" "V'Ball (US) [bl].mra" "_V'Ball" "" "SPO"
add "$dir" "H" "V'Ball (US).mra" "_V'Ball" "" "SPO"
add "$dir" "H" "Renegade (US bootleg).mra" "_Renegade" "" "BEA"
add "$dir" "H" "Renegade (US).mra" "_Renegade" "" "BEA"

dot