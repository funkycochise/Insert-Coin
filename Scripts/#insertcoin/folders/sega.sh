#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep sega $names)
else
   sega="_Sega"
fi
dir=$sega

resh=$(exist "Super Locomotive.mra")
resv=$(exist "Pulsar.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Carnival.mra" "_Carnival" "" "ACT"
   add "$dir" "V" "Future Spy (315-5061).mra" "_Future Spy"
   add "$dir" "V" "Pengo (Set 1, Rev C).mra" "_Pengo" "" "PUZ"
   add "$dir" "V" "Pulsar.mra" "_Pulsar" 
   add "$dir" "V" "Super Zaxxon (315-5013).mra" "_Super Zaxxon" "" "ACT"
   add "$dir" "V" "Zaxxon (Set 1, Rev D).mra" "_Zaxxon" "" "ACT"

   add "$dir" "H" "BankPanic.mra" "_BankPanic"
   add "$dir" "H" "Super Locomotive.mra" "_Super Locomotive" "" "ACT"
   dot
fi
