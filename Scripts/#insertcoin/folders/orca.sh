#!/bin/bash
source ./folders/functions.sh
dir=$orca
#dir=_Orca

resv=$(exist "Vastar.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V"  "Vastar.mra" "_Vastar" "" "STG"
   add "$dir" "V"  "Planet Probe.mra" "_Planet Probe" "" "STG"
   dot
fi