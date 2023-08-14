
source ./folders/functions.sh

dir="_Alpha"

out=$1
horizontal=$2
vertical=$3

echo ""
#echo "out: $out"
#echo "dir: $dir"

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"
add "$dir" "H" "Gang Wars.mra" "_Gang Wars"
add "$dir" "V" "Sky Adventure (World).mra" "_Sky Adventure"
add "$dir" "V" "Sky Soldiers (US).mra" "_Sky Soldiers"
add "$dir" "V" "Time Soldiers (US Rev 3).mra" "_Time Soldiers"
dot