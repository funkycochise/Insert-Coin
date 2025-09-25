#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep nintendo $names)
else
   nintendo="_Nintendo"
fi
dir=$nintendo

resh=$(exist "Sky Skipper.mra")
resv=$(exist "Donkey Kong (US, Set 1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
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