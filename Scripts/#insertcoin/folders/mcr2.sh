source ./folders/functions.sh

dir="_Midway_MCR2"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V"  "Satan's Hollow (Set 1).mra" "_Satan's Hollow"
add "$dir" "V"  "Tron.mra" "_Tron"

add "$dir" "H"  "Domino Man.mra" "_Domino Man"
add "$dir" "H"  "Kozmik Krooz'r.mra" "_Kozmik Kroozr"
add "$dir" "H"  "Two Tigers (Tron Conversion).mra" "_Two Tigers"
add "$dir" "H"  "Wacko.mra" "_Wacko"

dot