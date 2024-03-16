source ./folders/functions.sh

dir="_Bagman"
outdir=$1
horizontal=$2
vertical=$3
stg_horizontal=$4
stg_vertical=$5

add "$dir" "H" "Squash.mra" "_Squash"

add "$dir" "V" "Bagman.mra" "_Bagman"
add "$dir" "V" "Botanic (English, Spanish, Set 1).mra" "_Botanic"
add "$dir" "V" "Pickin'.mra" "_Pickin"
add "$dir" "V" "Super Bagman.mra" "_Super Bagman"
dot