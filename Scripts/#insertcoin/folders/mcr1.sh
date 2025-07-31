#!/bin/bash
source ./folders/functions.sh
loadsetup
dir="_Midway_MCR1"
if [ "$merge_system" == "1" ]; then
      dir="_Midway"
fi

res=$(exist "Kick.mra")
if [ "$res" == "1" ]; then
   outdir=$1
   add "$dir" "V"  "Kick.mra" "_Kick"
   add "$dir" "V"  "Kick-Man.mra" "_Kick-Man"
   add "$dir" "V"  "Solar Fox.mra" "_Solar Fox"
   dot
fi