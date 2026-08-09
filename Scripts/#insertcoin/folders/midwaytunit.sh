#!/bin/bash
source ./folders/functions.sh
dir=$midwaytunit

resh=$(exist "Mortal Kombat (rev 5.0 T-Unit 03-19-93).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Mortal Kombat (rev 5.0 T-Unit 03-19-93).mra" "_Mortal Kombat" "" "VSF"
   add "$dir" "H" "Mortal Kombat II (rev L3.1).mra" "_Mortal Kombat II" "" "VSF"
   add "$dir" "H" "NBA Jam (rev 3.01 4-07-93).mra" "_NBA Jam" "" "SPO"
   add "$dir" "H" "NBA Jam Tournament Edition (rev 4.0 3-23-94).mra" "_NBA Jam Tournament Edition" "" "SPO"
   dot
fi
