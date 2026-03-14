#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep orca $names)
else
   orca="_Orca"
fi
orca="_Orca"
dir=$orca

resh=$(exist "Vastar.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V"  "Vastar.mra" "_Vastar" "" "STG"
   add "$dir" "V"  "Planet Probe.mra" "_Planet Probe" "" "STG"
   dot
fi