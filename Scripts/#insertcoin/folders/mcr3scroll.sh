#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep mcr3scroll $names)
else
   mcr3scroll="_Midway_MCR3Scroll"
fi
dir=$mcr3scroll

res=$(exist "Spy Hunter.mra")
if [ "$res" == "1" ]; then
   dir="_MCR3Scroll"
   outdir=$1
   add "$dir" "H"  "Crater Raider.mra" "_Crater Raider"
   add "$dir" "H"  "Spy Hunter.mra" "_Spy Hunter"
   add "$dir" "H"  "Turbo Tag (Prototype).mra" "_Turbo Tag"
   dot
fi