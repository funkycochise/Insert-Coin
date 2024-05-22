#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Robotron 2084.mra")
if [ "$res" == "1" ]; then
   dir=""
   outdir=$1

   add "$dir" "H"  "Alien Arena (Stargate upgrade).mra" "_Robotron"
   add "$dir" "H"  "Bubbles.mra" "_Robotron"
   add "$dir" "H"  "Joust.mra" "_Robotron"
   add "$dir" "H"  "Playball (Prototype).mra" "_Robotron"
   add "$dir" "H"  "Robotron 2084.mra" "_Robotron"
   add "$dir" "H"  "Sinistar.mra" "_Robotron"
   add "$dir" "H"  "Splat!.mra" "_Robotron"
   add "$dir" "H"  "Stargate.mra" "_Robotron"
   dot
fi