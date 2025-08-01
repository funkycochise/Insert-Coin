#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep mcr3 $names)
else
   mcr3="_Midway_MCR3"
fi
dir=$mcr3

res=$(exist "Journey.mra")
if [ "$res" == "1" ]; then
   outdir=$1
   add "$dir" "V"  "Journey.mra" "_Journey"

   add "$dir" "H"  "Discs of Tron.mra" "_Disc of Tron"
   add "$dir" "H"  "Tapper (Budweiser, 840127).mra" "_Tapper"
   add "$dir" "H"  "Timber.mra" "_Timber"
   dot
fi