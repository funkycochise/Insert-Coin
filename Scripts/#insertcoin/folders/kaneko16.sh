#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$kaneko16
else
   dir=$kaneko
fi

resv=$(exist "Explosive Breaker (World).mra")
resh=$(exist "Blaze On (Japan).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then  

   add "$dir" "H" "Blaze On (Japan).mra" "_Blaze On" "" "STG"
   add "$dir" "H" "Magical Crystals (World, 92-01-10).mra" "_Magical Crystals" "" "PUZ"

   add "$dir" "V" "Explosive Breaker (World).mra" "_Explosive Breaker" "" "STG"
   add "$dir" "V" "Wing Force (Japan, prototype).mra" "_Wing Force" "" "STG"

  dot
fi
