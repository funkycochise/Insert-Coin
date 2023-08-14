source ./folders/functions.sh

dir="_Gottlieb"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Curve Ball.mra" "_Curve Ball"
add "$dir" "V" "Insector.mra" "_Insector"
add "$dir" "V" "Krull.mra" "_Krull"
add "$dir" "V" "Mad Planets.mra" "_Mad Planets"
add "$dir" "V" "Q'bert (US, Set 1).mra" "_QBert"
add "$dir" "V" "QBert Qubes.mra" "_QBert Qubes"
add "$dir" "V" "Tylz.mra" "_Tylz"
dot