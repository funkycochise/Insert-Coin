#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Sky Adventure (World).mra")
if [ "$res" == "1" ]; then
   dir="_Alpha"
   outdir=$1

   add "$dir" "H" "Gang Wars.mra" "_Gang Wars" "" "BEA"
   add "$dir" "V" "Sky Adventure (World).mra" "_Sky Adventure" "" "STG"
   add "$dir" "V" "Sky Soldiers (US).mra" "_Sky Soldiers" "" "STG"
   add "$dir" "V" "Time Soldiers (US Rev 3).mra" "_Time Soldiers" "" "STG"
   dot
fi