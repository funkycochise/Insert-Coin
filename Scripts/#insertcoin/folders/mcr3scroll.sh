#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$mcr3scroll
else
   dir=$bally_midway
fi

resh=$(exist "Spy Hunter.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H"  "Crater Raider.mra" "_Crater Raider"
   add "$dir" "H"  "Spy Hunter.mra" "_Spy Hunter"
   add "$dir" "H"  "Turbo Tag (Prototype).mra" "_Turbo Tag"
   dot
fi