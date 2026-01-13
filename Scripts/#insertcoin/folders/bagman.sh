#!/bin/bash
source ./folders/functions.sh
loadsetup

names=/media/fat/Scripts/#insertcoin/names.ini
if [ -f "$names" ]; then
   source <(grep bagman $names)
else
   bagman="_Bagman"
fi
dir=$bagman

resh=$(exist "Squash.mra")
resv=$(exist "Bagman.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Squash.mra" "_Squash"

   add "$dir" "V" "Bagman.mra" "_Bagman"
   add "$dir" "V" "Botanic (English, Spanish, Set 1).mra" "_Botanic"
   add "$dir" "V" "Pickin'.mra" "_Pickin"
   add "$dir" "V" "Super Bagman.mra" "_Super Bagman"
   dot
fi