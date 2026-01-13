#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep crazykong $names)
else
   crazykong="_CrazyKong"
fi
dir=$crazykong

resv=$(exist "Crazy Kong (Kyoei).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add_rep "$dir" "V" "_Crazy Kong" "_Crazy Kong" "" "ACT"
   add_rep "$dir" "V" "_Crazy Kong Part II" "_Crazy Kong Part II" "" "ACT"
   dot
fi