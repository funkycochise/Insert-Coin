#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep mcr3scroll $names)
else
   mcr3scroll="_Midway_MCR3Scroll"
fi
if [ -f "$names" ]; then
   source <(grep bally_midway $names)
else
   bally_midway="_Bally-midway"
fi
if [ "$show_system" == "1" ]; then
   dir=$mcr3scroll
else
   dir=$bally_midway
fi

resh=$(exist "Spy Hunter.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "H"  "Crater Raider.mra" "_Crater Raider"
   add "$dir" "H"  "Spy Hunter.mra" "_Spy Hunter"
   add "$dir" "H"  "Turbo Tag (Prototype).mra" "_Turbo Tag"
   dot
fi