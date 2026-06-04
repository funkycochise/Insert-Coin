#!/bin/bash
source ./folders/functions.sh
dir=$robotron

resh=$(exist "Stargate.mra")
resv=$(exist "Robotron 2084.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H"  "Alien Arena (Stargate upgrade).mra" "_Alien Arena"
   add "$dir" "H"  "Bubbles.mra" "_Bubbles"
   add "$dir" "H"  "Joust.mra" "_Joust"
   add "$dir" "H"  "Playball (Prototype).mra" "_Playball"
   add "$dir" "H"  "Robotron 2084.mra" "_Robotron"
   add "$dir" "H"  "Sinistar.mra" "_Sinistar"
   add "$dir" "H"  "Splat!.mra" "_Splat!"
   add "$dir" "H"  "Stargate.mra" "_Stargate"
   dot
fi