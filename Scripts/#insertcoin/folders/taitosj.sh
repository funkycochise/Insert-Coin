#!/bin/bash  
source ./folders/functions.sh

loadsetup

if [ -f "$names" ]; then
   source <(grep taitosj $names)
else
   taitosj="_Taito-SJ"
fi
if [ -f "$names" ]; then
   source <(grep taito $names)
else
   taito="_Taito"
fi
if [ "$show_system" == "1" ]; then
   dir=$taitosj
else
   dir=$taito
fi

resh=$(exist "Elevator Action.mra")
resv=$(exist "Adventure Canoe.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Adventure Canoe.mra" "_Adventure Canoe" "" "ACT"
   add "$dir" "V" "Alpine Ski.mra" "_Alpine Ski" "" "SPO"
   add "$dir" "V" "Bio Attack.mra" "_Bio Attack"
   add "$dir" "V" "Elevator Action.mra" "_Elevator Action" "" "ACT"
   add "$dir" "V" "High Way Race.mra" "_High Way Race"
   add "$dir" "V" "Sea Fighter Poseidon.mra" "_Sea Fighter Poseidon"
   add "$dir" "V" "Space Cruiser.mra" "_Space Cruiser"
   add "$dir" "V" "Space Seeker.mra" "_Space Seeker"
   add "$dir" "V" "The Tin Star.mra" "_The Tin Star"
   add "$dir" "V" "Water Ski.mra" "_Water Ski""" "" "SPO"
   add "$dir" "V" "Wild Western.mra" "_Wild Western" "" "ACT"
#   add "$dir" "V" "Front Line.mra" "_Front Line"

   add "$dir" "H" "Jungle Hunt US" "_Jungle Hunt"
   #add "$dir" "V" "Elevator Action Bootleg.mra" "_Elevator Action" "" "ACT"
   add "$dir" "H" "Jungle King Japan.mra" "_Jungle King"
#   add "$dir" "H" "Kick Start Wheelie King.mra" "_Kick Start Wheelie King"
   add "$dir" "H" "Pirate Pete.mra" "_Pirate Pete"
   
   add "$dir" "V" "Time Tunnel.mra" "_Time Tunnel"
  dot
fi
