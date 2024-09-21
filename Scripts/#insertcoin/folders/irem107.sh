#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Air Assault (World).mra")
if [ "$res" == "1" ]; then
   dir="_Irem M107"
   outdir=$1

   add "$dir" "V" "Air Assault (World).mra" "_Air Assault" "" "STG"

   add "$dir" "H" "Dream Soccer '94 (World, M107 hardware).mra" "_Dream Soccer '94 M107" "" "SPO"
   dot
fi


