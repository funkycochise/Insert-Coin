#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep mcr3mono $names)
else
   mcr3mono="_Midway_MCR3Mono"
fi
if [ -f "$names" ]; then
   source <(grep bally_midway $names)
else
   bally_midway="_Bally-midway"
fi
if [ "$show_system" == "1" ]; then
   dir=$mcr3mono
else
   dir=$bally_midway
fi

resh=$(exist "Demolition Derby (MCR-3 Mono Board Version).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "H" "Demolition Derby (MCR-3 Mono Board Version).mra" "_Demolition Derby"
   add "$dir" "H" "Max RPM (v2).mra" "_Max RPM"
   add "$dir" "H" "Power Drive.mra" "_Power Drive"
   add "$dir" "H" "Rampage (Rev 3, 860827).mra" "_Rampage"
   add "$dir" "H" "Sarge.mra" "_Sarge"
   add "$dir" "H" "Star Guards.mra" "_Star Guards"
   dot
fi