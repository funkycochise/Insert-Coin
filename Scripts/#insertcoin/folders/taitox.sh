#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$taitox
else
   dir=$taito
fi

resh=""
resv=$(exist "Twin Hawk (World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Twin Hawk (World).mra" "_Twin Hawk" "" "STG"

  dot
fi
