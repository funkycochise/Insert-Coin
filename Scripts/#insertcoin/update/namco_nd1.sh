#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_nd1
else
   dir=$namco
fi

resv=$(exist "Namco Classic Collection Vol.1.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Namco Classic Collection Vol.1.mra" "_Namco Classic Collection" "" ""
   add "$dir" "V" "Namco Classic Collection Vol.2.mra" "_Namco Classic Collection" "" ""
   dot
fi
