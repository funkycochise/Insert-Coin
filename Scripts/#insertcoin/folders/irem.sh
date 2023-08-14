
source ./folders/functions.sh

dir="_Irem"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"
add "$dir" "V" "Shot Rider (B-Board 89624B-1).mra" "_Shot Rider"
add "$dir" "V" "Traverse USA- Zippy Race (US).mra" "_Traverse USA"
add "$dir" "H" "Moon Patrol.mra" "_Moon Patrol"
add "$dir" "H" "Vigilante (World, Rev E).mra" "_Vigilante"
add "$dir" "H" "Tropical Angel.mra" "_Tropical Angel"
dot
