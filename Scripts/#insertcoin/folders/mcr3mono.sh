#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Demolition Derby (MCR-3 Mono Board Version).mra")
if [ "$res" == "1" ]; then
   dir="_MCR3Mono"
   outdir=$1
   add "$dir" "H" "Demolition Derby (MCR-3 Mono Board Version).mra" "_Demolition Derby"
   add "$dir" "H" addgame "Demolition Derby.mra" "_Demolition Derby"
   add "$dir" "H" addgame "Max RPM (v2).mra" "_Max RPM"
   add "$dir" "H" addgame "Max RPM.mra" "_Max RPM"
   add "$dir" "H" addgame "Power Drive.mra" "_Power Drive"
   add "$dir" "H" addgame "Rampage (Rev 3, 860827).mra" "_Rampage"
   add "$dir" "H" addgame "Rampage.mra" "_Rampage"
   add "$dir" "H" addgame "Sarge.mra" "_Sarge"
   add "$dir" "H" addgame "Star Guards.mra" "_Star Guards"
   dot
fi