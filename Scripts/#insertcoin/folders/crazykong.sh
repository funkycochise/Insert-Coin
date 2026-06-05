#!/bin/bash
source ./folders/functions.sh
dir=$crazykong

resv=$(exist "Crazy Kong (Kyoei).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add_rep "$dir" "V" "_Crazy Kong" "_Crazy Kong" "" "ACT"
   add_rep "$dir" "V" "_Crazy Kong Part II" "_Crazy Kong Part II" "" "ACT"
   dot
fi