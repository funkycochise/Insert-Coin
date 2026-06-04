#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$taitosj
else
   dir=$taito
fi

resh=$(exist "Elevator Action.mra")
resv=$(exist "Adventure Canoe.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Adventure Canoe.mra" "_Adventure Canoe" "" "ACT"
   add "$dir" "V" "Alpine Ski.mra" "_Alpine Ski" "" "SPO"
   add "$dir" "V" "Bio Attack.mra" "_Bio Attack"
   add "$dir" "V" "Elevator Action.mra" "_Elevator Action" "" "ACT"
   add "$dir" "V" "Front Line.mra" "_Front Line"
   add "$dir" "V" "High Way Race.mra" "_High Way Race"
   add "$dir" "V" "Sea Fighter Poseidon.mra" "_Sea Fighter Poseidon"
   add "$dir" "V" "Space Cruiser.mra" "_Space Cruiser"
   add "$dir" "V" "Space Seeker.mra" "_Space Seeker"
   add "$dir" "V" "Time Tunnel.mra" "_Time Tunnel"
   add "$dir" "V" "The Tin Star.mra" "_The Tin Star"
   add "$dir" "V" "Water Ski.mra" "_Water Ski""" "" "SPO"
   add "$dir" "V" "Wild Western.mra" "_Wild Western" "" "ACT"

   add "$dir" "H" "jetpac_sj.mra" "_jetpac_sj"
   add "$dir" "H" "Jungle Hunt US.mra" "_Jungle Hunt"
   add "$dir" "H" "Jungle King Japan.mra" "_Jungle King"
   add "$dir" "H" "Pirate Pete.mra" "_Pirate Pete"
   
  dot
fi
