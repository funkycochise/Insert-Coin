#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Q'bert (US, Set 1).mra")
if [ "$res" == "1" ]; then
   dir="_Gottlieb"
   outdir=$1

   add "$dir" "V" "Curve Ball.mra" "_Curve Ball"
   add "$dir" "V" "Insector.mra" "_Insector"
   add "$dir" "V" "Krull.mra" "_Krull"
   add "$dir" "V" "Mad Planets.mra" "_Mad Planets"
   add "$dir" "V" "Q'bert (US, Set 1).mra" "_QBert" "" "ACT"
   add "$dir" "V" "QBert Qubes.mra" "_QBert Qubes" "" "ACT"
   add "$dir" "V" "Tylz.mra" "_Tylz"
   dot
fi