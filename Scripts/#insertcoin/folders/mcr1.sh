#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Kick.mra")
if [ "$res" == "1" ]; then
   dir="_Midway_MCR1"
   outdir=$1
   add "$dir" "V"  "Kick.mra" "_Kick"
   add "$dir" "V"  "Kick-Man.mra" "_Kick-Man"
   add "$dir" "V"  "Solar Fox.mra" "_Solar Fox"
   dot
fi