 #!/bin/bash  
source ./folders/functions.sh

dir="_Midway_MCR1"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V"  "Kick.mra" "_Kick"
add "$dir" "V"  "Kick-Man.mra" "_Kick-Man"
add "$dir" "V"  "Solar Fox.mra" "_Solar Fox"

dot