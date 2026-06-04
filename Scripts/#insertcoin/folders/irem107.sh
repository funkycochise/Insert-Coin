#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$irem107
else
   dir=$irem
fi

resh=$(exist "Dream Soccer '94 (World, M107 hardware).mra")
resv=$(exist "Air Assault (World).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Air Assault (World).mra" "_Air Assault" "" "STG"

   add "$dir" "H" "Dream Soccer '94 (World, M107 hardware).mra" "_Dream Soccer '94 M107" "" "SPO"
   dot
fi


