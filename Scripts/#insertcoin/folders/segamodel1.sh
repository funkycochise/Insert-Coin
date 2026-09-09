#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segamodel1
else
   dir=$sega
fi

resh=$(exist "Virtua Racing.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Virtua Racing.mra" "_Virtua Racing"
   dot
fi
