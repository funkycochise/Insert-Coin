#!/bin/bash
source ./folders/functions.sh
loadsetup
dir="_Midway_MCR3"
if [ "$merge_system" == "1" ]; then
      dir="_Midway"
fi

res=$(exist "Discs of Tron.mra")
if [ "$res" == "1" ]; then
   outdir=$1
   add "$dir" "V"  "Journey.mra" "_Journey"

   add "$dir" "H"  "Discs of Tron.mra" "_Disc of Tron"
   add "$dir" "H"  "Tapper (Budweiser, 840127).mra" "_Tapper"
   add "$dir" "H"  "Timber.mra" "_Timber"

   dot
fi