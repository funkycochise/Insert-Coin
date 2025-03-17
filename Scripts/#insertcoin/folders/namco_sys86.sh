#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Rolling Thunder.mra")
if [ "$res" == "1" ]; then
   dir="_Namco_System86"
   outdir=$1


   add "$dir" "H" "Rolling Thunder.mra" "_Rolling Thunder" "" "ACT"
   dot
fi