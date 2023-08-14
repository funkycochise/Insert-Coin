
source ./folders/functions.sh

dir="_Irem M62 Hardware"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "The Battle-Road.mra" "_Battle Road"
add "$dir" "V" "Youjyuden (JP).mra" "_Youjyuden"
add "$dir" "H" "Horizon (Irem).mra" "_Horizon"
add "$dir" "H" "Kid Niki - Radical Ninja (W).mra" "_Kid Niki - Radical Ninja"
add "$dir" "H" "Kung-Fu Master (W).mra" "_Kung-Fu Master"
add "$dir" "H" "Lode Runner (Set 1).mra" "_Lode Runner"
add "$dir" "H" "Lode Runner II - The Bungeling Strikes Back.mra" "_Lode Runner II"
add "$dir" "H" "Lode Runner III - The Golden Labyrinth.mra" "_Lode Runner III"
add "$dir" "H" "Lode Runner IV - Teikoku Karano Dasshutsu (JP).mra" "_Lode Runner IV"
add "$dir" "H" "Spelunker II - 23 no Kagi (JP).mra" "_Spelunker II"
add "$dir" "H" "Spelunker.mra" "_Spelunker"
dot