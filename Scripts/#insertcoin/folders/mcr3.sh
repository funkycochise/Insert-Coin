#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Discs of Tron.mra")
if [ "$res" == "1" ]; then
   dir="_Midway_MCR3"
   outdir=$1
   add "$dir" "V"  "Journey.mra" "_Journey"

   add "$dir" "H"  "Discs of Tron.mra" "_Disc of Tron"
   add "$dir" "H"  "Tapper (Budweiser, 840127).mra" "_Tapper"
   add "$dir" "H"  "Timber.mra" "_Timber"
   dot
fi