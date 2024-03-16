 #!/bin/bash
source ./folders/functions.sh

dir="_Nintendo"
outdir=$1
horizontal=$2
vertical=$3
stg_horizontal=$4
stg_vertical=$5

add "$dir" "V"  "Donkey Kong (Spanish Crazy Kong bootleg).mra" "_Donkey Kong" "" "ACT"
add "$dir" "V"  "Donkey Kong (US, Set 1).mra" "_Donkey Kong" "" "ACT"
add "$dir" "V"  "Donkey Kong 3 (US).mra" "_Donkey Kong 3" "" "ACT"
add "$dir" "V"  "Donkey Kong Junior (US, Set F-2).mra" "_Donkey Kong Junior" "" "ACT"
add "$dir" "V"  "Mario Bros. (US, Rev G).mra" "_Mario Bros" "" "ACT"
add "$dir" "V"  "Radar Scope (rev. D).mra" "_Radar Scope" "" "STG"

add "$dir" "H"  "Popeye (Rev D).mra" "_Popeye" "" "ACT"
add "$dir" "H"  "Sky Skipper.mra" "_Sky Skipper" "" "STG"

dot