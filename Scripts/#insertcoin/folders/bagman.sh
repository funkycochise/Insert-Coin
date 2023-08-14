source ./folders/functions.sh

dir="_Bagman"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "H" "Squash.mra" "_Squash"

add "$dir" "V" "Bagman.mra" "_Bagman"
add "$dir" "V" "Botanic (English, Spanish, Set 1).mra" "_Botanic"
add "$dir" "V" "Pickin'.mra" "_Pickin"
add "$dir" "V" "Super Bagman.mra" "_Super Bagman"
dot