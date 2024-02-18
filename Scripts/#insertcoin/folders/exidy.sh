source ./folders/functions.sh

dir="_Exidy"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "H" "Venture Revision 5.mra" "_Venture"
add "$dir" "H" "TARG.mra" "_TARG"
add "$dir" "H" "Spectar.mra" "_Spectar"
add "$dir" "H" "Pepper II.mra" "_Pepper II"
add "$dir" "H" "Mouse Trap.mra" "_Mouse Trap"
dot