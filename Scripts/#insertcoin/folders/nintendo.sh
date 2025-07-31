#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Donkey Kong (US, Set 1).mra")
if [ "$res" == "1" ]; then
   dir="_Nintendo"
   outdir=$1
   add "$dir" "V"  "Donkey Kong (US, Set 1).mra" "_Donkey Kong" "" "ACT"
   add "$dir" "V"  "Donkey Kong 3 (US).mra" "_Donkey Kong 3" "" "ACT"
   add "$dir" "V"  "Donkey Kong Junior (US, Set F-2).mra" "_Donkey Kong Junior" "" "ACT"
   add "$dir" "V"  "Mario Bros. (US, Rev G).mra" "_Mario Bros" "" "ACT"
   add "$dir" "V"  "Radar Scope (rev. D).mra" "_Radar Scope" "" "STG"

   add "$dir" "H"  "Popeye (Rev D).mra" "_Popeye" "" "ACT"
   add "$dir" "H"  "Sky Skipper.mra" "_Sky Skipper" "" "ACT"
   dot
fi