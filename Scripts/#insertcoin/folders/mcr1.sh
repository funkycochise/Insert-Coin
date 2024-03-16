 #!/bin/bash  
source ./folders/functions.sh

dir="_Midway_MCR1"
outdir=$1
horizontal=$2
vertical=$3
stg_horizontal=$4
stg_vertical=$5

add "$dir" "V"  "Kick.mra" "_Kick"
add "$dir" "V"  "Kick-Man.mra" "_Kick-Man"
add "$dir" "V"  "Solar Fox.mra" "_Solar Fox"

dot