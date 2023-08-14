source ./folders/functions.sh

dir="_MCR3"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V"  "Journey.mra" "_Journey"

add "$dir" "H"  "Discs of Tron.mra" "_Disc of Tron"
add "$dir" "H"  "Tapper (Budweiser, 840127).mra" "_Tapper"
add "$dir" "H"  "Timber.mra" "_Timber"

dot