 #!/bin/bash  
source ./folders/functions.sh

dir="_Universal"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Cosmic Alien.mra" "_Cosmic Alien"
add "$dir" "V" "Cosmic Guerilla.mra" "_Cosmic Guerilla"
add "$dir" "V" "Devil Zone.mra" "_Devil Zone"
add "$dir" "V" "Galaxy Wars (Universal, Set 1).mra" "_Galaxy Wars"
add "$dir" "V" "Lady Bug.mra" "_Lady Bug"
add "$dir" "V" "Magical Spot.mra" "_Magical Spot"
add "$dir" "V" "Mr. Do! Fixed.mra" "_Mr. Do!"
add "$dir" "V" "Mr. Do!.mra" "_Mr. Do!"
add "$dir" "V" "No Mans Land.mra" "_No Mans Land"
add "$dir" "V" "Space Panic.mra" "_Space Panic"

add "$dir" "H" "Snap Jack.mra" "_Snap Jack"
dot