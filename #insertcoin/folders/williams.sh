#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep williams $names)
else
   williams="_Williams"
fi
dir=$williams

resh=$(exist "Joust.mra")
resv=$(exist "Sinistar.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Alien Arena (Stargate upgrade).mra" "_Alien Arena"
   add "$dir" "H" "Bubbles.mra" "_Bubbles"
   add "$dir" "H" "Defender (Red Label).mra" "_Defender"
   add "$dir" "H" "Defender (Red Label).mra" "_Defender"
   add "$dir" "H" "Inferno (Williams).mra" "_Inferno"
   add "$dir" "H" "Joust.mra" "_Joust"
   add "$dir" "H" "Mayday (Set 1).mra" "_Mayday"
   add "$dir" "H" "Mystic Marathon.mra" "_Mystic Marathon"
   add "$dir" "H" "Robotron 2084.mra" "_Robotron"
   add "$dir" "H" "Space Encounters.mra" "_Space Encounters"
   add "$dir" "H" "Splat!.mra" "_Splat"
   add "$dir" "H" "Stargate.mra" "_Stargate"
   add "$dir" "H" "Turkey Shoot - The Day They Took Over.mra" "_Turkey Shoot"

   add "$dir" "V" "Colony 7 (Set 1).mra" "_Colony7"
   add "$dir" "V" "Jin.mra" "_Jin"
   add "$dir" "V" "Joust 2 - Survival of the Fittest (revision 2).mra" "_Joust 2"
   add "$dir" "V" "Playball (Prototype).mra" "_Playball"
   add "$dir" "V" "Sinistar.mra" "_Sinistar"
   dot
fi