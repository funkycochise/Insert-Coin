 #!/bin/bash  

source ./folders/functions.sh

dir="_MCR3Scroll"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

addgame "Crater Raider.mra" "_Crater Raider"
addgame "Spy Hunter.mra" "_Spy Hunter"
addgame "Turbo Tag (Prototype).mra" "_Turbo Tag"
addgame "Turbo Tag.mra" "_Turbo Tag"
dot