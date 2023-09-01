#!/bin/bash  
source ./folders/functions.sh

dir="_Konami Twin16"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

#add "$dir" "V" "Amidar (Scramble).mra" "_Amidar"


add "$dir" "H" "The Final Round (version M).mra" "_The Final Round"

dot