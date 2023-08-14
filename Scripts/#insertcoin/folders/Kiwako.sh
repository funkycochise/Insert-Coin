source ./folders/functions.sh

dir="_Kiwako"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "MrJong.mra" "_CrazyBlocks"
add "$dir" "V" "BlockBuster.mra" "_CrazyBlocks"
add "$dir" "V" "CrazyBlocks.mra" "_CrazyBlocks"
dot