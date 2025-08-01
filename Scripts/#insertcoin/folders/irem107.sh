#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep irem107 $names)
else
   irem107="_Irem M107"
fi
dir=$irem107

res=$(exist "Air Assault (World).mra")
if [ "$res" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Air Assault (World).mra" "_Air Assault" "" "STG"

   add "$dir" "H" "Dream Soccer '94 (World, M107 hardware).mra" "_Dream Soccer '94 M107" "" "SPO"
   dot
fi


