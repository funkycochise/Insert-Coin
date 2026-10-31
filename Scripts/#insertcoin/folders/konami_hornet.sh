#!/bin/bash
source ./folders/functions.sh

if [ "$show_system" == "1" ]; then
   dir=$konamihornet
else
   dir=$konami
fi

resh=$(exist "Gradius IV Fukkatsu (ver JAC).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Gradius IV Fukkatsu (ver JAC).mra" "_Gradius IV Fukkatsu" "" "STG"
   dot
fi
