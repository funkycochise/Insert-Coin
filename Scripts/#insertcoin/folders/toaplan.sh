 #!/bin/bash  
source ./folders/functions.sh

dir="_Toaplan"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Alcon Bootleg.mra" "_SlapFight"
add "$dir" "V" "Out Zone.mra" "_Out Zone"
add "$dir" "V" "Performan (Japan).mra" "_Performan"
add "$dir" "V" "Rally Bike - Dash Yarou.mra" "_Rally Bike"
add "$dir" "V" "Same! Same! Same! (2P Set).mra" "_Fire Shark"
add "$dir" "V" "SlapFight Bootleg.mra" "_SlapFight"
add "$dir" "V" "Truxton - Tatsujin.mra" "_Truxton"
add "$dir" "V" "Truxton II - Tatsujin Oh.mra" "_Truxton II"
add "$dir" "V" "Vimana (Japan).mra" "_Vimana"

add "$dir" "H" "Demons World - Horror Story (Set 3).mra" "_Demon's World"
add "$dir" "H" "Hellfire (2P set).mra" "_Hellfire"
add "$dir" "H" "Pipi & Bibis - Whoopee!! (Z80 sound cpu, set 1).mra" "_Pipi & Bibis"
add "$dir" "H" "Snow Bros. 2 - With New Elves - Otenki Paradise (Hanafram).mra" "_Snow Bros. 2"
add "$dir" "H" "Zero Wing (2P set).mra" "_Zero Wing"
dot
