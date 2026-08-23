#!/bin/bash
source ./folders/functions.sh
dir=$sega

resh=$(exist "Buck Rogers Planet of Zoom (not encrypted, set 1).mra")
resv=$(exist "Pulsar.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Carnival.mra" "_Carnival" "" "ACT"
   add "$dir" "V" "Future Spy (315-5061).mra" "_Future Spy"
   add "$dir" "V" "Pengo (Set 1, Rev C).mra" "_Pengo" "" "PUZ"
   add "$dir" "V" "Pulsar.mra" "_Pulsar" 
   add "$dir" "V" "Super Zaxxon (315-5013).mra" "_Super Zaxxon" "" "ACT"
   add "$dir" "V" "Zaxxon (Set 1, Rev D).mra" "_Zaxxon" "" "ACT"

   add "$dir" "H" "Buck Rogers Planet of Zoom (not encrypted, set 1).mra" "_Buck Rogers Planet of Zoom" "" "STG"
   add "$dir" "H" "BankPanic.mra" "_BankPanic"
   add "$dir" "H" "OutRunners.mra" "_OutRunners" "" "RAC"
   add "$dir" "H" "Super Locomotive.mra" "_Super Locomotive" "" "ACT"
   dot
fi
