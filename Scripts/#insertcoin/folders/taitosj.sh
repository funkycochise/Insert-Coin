#!/bin/bash  
source ./folders/functions.sh

loadsetup
dir="_Taito-SJ"
if [ "$merge_system" == "1" ]; then
      dir="_Taito"
fi
res=$(exist "Elevator Action Bootleg.mra")
if [ "$res" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Alpine Ski.mra" "_Alpine Ski" "" "SPO"
   add "$dir" "V" "Bio Attack.mra" "_Bio Attack"
#   add "$dir" "V" "Front Line.mra" "_Front Line"
   add "$dir" "V" "High Way Race.mra" "_High Way Race"
   add "$dir" "V" "Space Cruiser.mra" "_Space Cruiser"
   add "$dir" "V" "Water Ski.mra" "_Water Ski""" "" "SPO"
   add "$dir" "V" "Wild Western.mra" "_Wild Western" "" "ACT"

#   add "$dir" "H" "Jungle Hunt.mra" "_Jungle Hunt"
#   add "$dir" "H" "Elevator Action.mra" "_Elevator Action" "" "ACT"
   add "$dir" "H" "Elevator Action Bootleg.mra" "_Elevator Action" "" "ACT"
   add "$dir" "H" "Jungle King.mra" "_Jungle King"
#   add "$dir" "H" "Kick Start Wheelie King.mra" "_Kick Start Wheelie King"
   add "$dir" "H" "Pirate Pete.mra" "_Pirate Pete"
#   add "$dir" "H" "Sea Fighter Poseidon.mra" "_Sea Fighter Poseidon"
   add "$dir" "H" "Space Seeker.mra" "_Space Seeker"
#   add "$dir" "H" "The Tin Star.mra" "_The Tin Star"
   add "$dir" "H" "Time Tunnel.mra" "_Time Tunnel"
  dot
fi
