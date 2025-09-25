#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep alpha $names)
else
   alpha="_Alpha"
fi
dir=$alpha

resh=$(exist "Gang Wars.mra")
resv=$(exist "Sky Adventure (World).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Gang Wars.mra" "_Gang Wars" "" "BEA"
   add "$dir" "V" "Sky Adventure (World).mra" "_Sky Adventure" "" "STG"
   add "$dir" "V" "Sky Soldiers (US).mra" "_Sky Soldiers" "" "STG"
   add "$dir" "V" "Time Soldiers (US Rev 3).mra" "_Time Soldiers" "" "STG"
   dot
fi