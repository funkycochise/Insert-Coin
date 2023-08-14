source ./folders/functions.sh

dir="_Jaleco"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Psychic 5 (World).mra" "_Psychic 5"
add "$dir" "V" "Exerion (Jaleco).mra" "_Exerion"
add "$dir" "V" "Exerion (Taito).mra" "_Exerion"

add "$dir" "H" "chameleon.mra" "_Chameleon"
add "$dir" "H" "P-47 - The Freedom Fighter (Japan).mra" "_P-47 - The Freedom Fighter"
add "$dir" "H" "Rod-Land (World, set 1).mra" "_Rod-Land"
add "$dir" "H" "Saint Dragon (Set 1).mra" "_Saint Dragon"
add "$dir" "H" "Soldam.mra" "_Soldam"
add "$dir" "H" "The Lord of King (Japan).mra" "_The Astyanax"
dir "$dir" "H" "" "_Avenging Spirit"
dot