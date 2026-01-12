#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep midwayy $names)
else
   midwayy="_Midway_YUnit"
fi
dir=$midwayy

resh=$(exist "Mortal Kombat (rev 4.0 09-28-92).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "H"  "High Impact Football (rev LA5 02-15-91).mra" "_High Impact Football"
   add "$dir" "H"  "Mortal Kombat (rev 4.0 09-28-92).mra" "_Mortal Kombat"
   add "$dir" "H"  "Smash T.V. (rev 8.00).mra" "_Smash T.V."
   add "$dir" "H"  "Super High Impact (rev LA1 09-30-91).mra" "_Super High Impact (rev LA1 09-30-91)"
   add "$dir" "H"  "Terminator 2 - Judgment Day (rev LA4 08-03-92).mra" "_Terminator 2 - Judgment Day"
   add "$dir" "H"  "Total Carnage (rev LA1 03-10-92).mra" "_Total Carnage"
   dot
fi