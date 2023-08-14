 #!/bin/bash
source ./folders/functions.sh

dir="_Nintendo"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V"  "Donkey Kong (Spanish Crazy Kong bootleg).mra" "_Donkey Kong"
add "$dir" "V"  "Donkey Kong (US, Set 1).mra" "_Donkey Kong"
add "$dir" "V"  "Donkey Kong 3 (US).mra" "_Donkey Kong 3"
add "$dir" "V"  "Donkey Kong Junior (US, Set F-2).mra" "_Donkey Kong Junior"
add "$dir" "V"  "Mario Bros. (US, Rev G).mra" "_Mario Bros"
add "$dir" "V"  "Radar Scope (rev. D).mra" "_Radar Scope"

add "$dir" "H"  "Popeye (Rev D).mra" "_Popeye"
add "$dir" "H"  "Sky Skipper.mra" "_Sky Skipper"

dot