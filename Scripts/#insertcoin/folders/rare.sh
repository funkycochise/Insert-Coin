 #!/bin/bash  
source ./folders/functions.sh

dir="_Rare"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "H"  "Battletoads.mgl" "_Battletoads"

dot