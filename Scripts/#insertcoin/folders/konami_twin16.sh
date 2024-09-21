#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "The Final Round (version M).mra")
if [ "$res" == "1" ]; then
   dir="_Konami Twin16"
   outdir=$1
   add "$dir" "H" "The Final Round (version M).mra" "_The Final Round" "" "SPO"
   dot
fi