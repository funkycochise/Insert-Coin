#!/bin/bash
source ./folders/functions.sh
dir=$midwaywolf

resh=$(exist "NBA Hangtime (L1.3).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H"  "Mortal Kombat (Wolf Unit).mra" "_Mortal Kombat" "" "VSF"
   add "$dir" "H"  "Mortal Kombat II (Wolf Unit).mra" "_Mortal Kombat II" "" "VSF"
   add "$dir" "H"  "Mortal Kombat 3 (rev 2.1).mra" "_Mortal Kombat 3" "" "VSF"
   add "$dir" "H"  "NBA Hangtime (L1.3).mra" "_NBAHangtime" "" "SPO"
   add "$dir" "H"  "NBA Maximum Hangtime (L1.03 06-09-97).mra" "_NBA Maximum Hangtime" "" "SPO"
   add "$dir" "H"  "NHL Open Ice - 2 on 2 Challenge (rev 1.21).mra" "_NHL Open Ice - 2 on 2 Challenge" "" "SPO"
   add "$dir" "H"  "Rampage (Rev 3, 860827).mra" "_Rampage" "" "ACT"
   add "$dir" "H"  "Rampage World Tour.mra" "_Rampage World Tour" "" "ACT"
   add "$dir" "H"  "Smash T.V. (rev 8.00) [firefix mixboot].mra" "_Smash T.V." "" "ACT"
   add "$dir" "H"  "Ultimate Mortal Kombat 3.mra" "_Ultimate Mortal Kombat 3" "" "VSF"
   add "$dir" "H"  "WWF WrestleMania (rev 1.30 08-10-95).mra" "_WWF WrestleMania" "" "VSF"

   dot
fi
