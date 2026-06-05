#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$mcr1
else
   dir=$bally_midway
fi

resv=$(exist "Kick.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V"  "Kick.mra" "_Kick"
   add "$dir" "V"  "Kick-Man.mra" "_Kick-Man"
   add "$dir" "V"  "Solar Fox.mra" "_Solar Fox"
   dot
fi