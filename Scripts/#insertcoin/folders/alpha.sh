#!/bin/bash
source ./folders/functions.sh
dir=$alpha

resh=$(exist "Gang Wars.mra")
resv=$(exist "Sky Adventure (World).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Gang Wars.mra" "_Gang Wars" "" "BEA"
   add "$dir" "V" "Sky Adventure (World).mra" "_Sky Adventure" "" "STG"
   add "$dir" "V" "Sky Soldiers (US).mra" "_Sky Soldiers" "" "STG"
   add "$dir" "V" "Time Soldiers (US Rev 3).mra" "_Time Soldiers" "" "STG"

   add "$dir" "H" "Champion Base Ball.mra" "_Champion Base Ball" "" "SPO"
   add "$dir" "V" "Exciting Soccer.mra" "_Exciting Soccer" "" "SPO"
   add "$dir" "V" "Exciting Soccer II.mra" "_Exciting Soccer II" "" "SPO"
   dot
fi