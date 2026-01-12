#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep mcr1 $names)
else
   mcr1="_Midway_MCR1"
fi
if [ -f "$names" ]; then
   source <(grep bally_midway $names)
else
   bally_midway="_Bally-midway"
fi
if [ "$show_system" == "1" ]; then
   dir=$mcr1
else
   dir=$bally_midway
fi

resv=$(exist "Kick.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V"  "Kick.mra" "_Kick"
   add "$dir" "V"  "Kick-Man.mra" "_Kick-Man"
   add "$dir" "V"  "Solar Fox.mra" "_Solar Fox"
   dot
fi