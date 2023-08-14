 #!/bin/bash  
source ./folders/functions.sh

dir="_Ladybug"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Cosmic Avenger.mra" "_Cosmic Avenger"
add "$dir" ""$out"" "Dorodon (Set 1).mra" "_Dorodon"
add "$dir" "V" "Lady Bug.mra" "_Lady Bug"

add "$dir" "H" "Snap Jack.mra" "_Snap Jack"

dot