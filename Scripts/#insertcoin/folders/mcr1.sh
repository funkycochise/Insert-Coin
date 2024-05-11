 #!/bin/bash  
source ./folders/functions.sh

dir="_Midway_MCR1"
outdir=$1
loadsetup

add "$dir" "V"  "Kick.mra" "_Kick"
add "$dir" "V"  "Kick-Man.mra" "_Kick-Man"
add "$dir" "V"  "Solar Fox.mra" "_Solar Fox"

dot