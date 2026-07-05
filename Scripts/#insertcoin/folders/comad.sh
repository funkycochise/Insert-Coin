#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$comad
else
   dir=$deco
fi

resv=$(exist "Gulf War II (set 1).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V" "Gulf War II (set 1).mra" "_Gulf War II" "" "STG"
   dot
fi
