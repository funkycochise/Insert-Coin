#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$taitox
else
   dir=$taito
fi

resh=""
resv=$(exist "Twin Hawk (World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Twin Hawk (World).mra" "_Twin Hawk" "" "STG"
   add "$dir" "H" "Superman (World).mra" "_Superman" "" "ACT"
   add "$dir" "H" "Gigandes.mra" "_Gigandes" "" "STG" 
   add "$dir" "H" "Balloon Brothers.mra" "_Balloon Brothers" "" "PUZ"
   add "$dir" "H" "Last Striker - Kyuukyoku no Striker.mra" "_Last Striker - Kyuukyoku no Striker" "" "SPO"
  dot
fi
