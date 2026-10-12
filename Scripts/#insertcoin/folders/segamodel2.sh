#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$segamodel2
else
   dir=$sega
fi

resh=$(exist "Daytona USA (Revision A).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Daytona USA (Revision A).mra" "_Daytona USA" "" "RAC"
   dot
fi
