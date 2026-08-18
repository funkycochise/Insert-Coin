#!/bin/bash  
source ./folders/functions.sh

dir=$kaneko


resv=$(exist "Cyvern - The Dragon Weapons (US).mra")
resh=$(exist "Gals Panic (unprotected, ver. 2.0).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then  

   add "$dir" "V" "Cyvern - The Dragon Weapons (US).mra" "_Cyvern - The Dragon Weapons" "" "STG"
   add "$dir" "V" "Sengeki Striker (Asia).mra" "_Sengeki Striker" "" "STG"

   add "$dir" "H" "Gals Panic (unprotected, ver. 2.0).mra" "_Gals Panic" "" "PUZ"
   add "$dir" "H" "Gals Panic 4 (Europe).mra" "_Gals Panic 4" "" "PUZ"
   add "$dir" "H" "Gals Panic 4 (Europe).mra" "_Gals Panic 4" "" "PUZ"
   add "$dir" "H" "Gals Panic DX (Asia).mra" "_Gals Panic DX" "" "PUZ"
   add "$dir" "H" "Gals Panic EX (Korea).mra" "_Gals Panic EX" "" "PUZ"
   add "$dir" "H" "Gals Panic S - Extra Edition (Europe, revision 1).mra" "_Gals Panic S - Extra Edition" "" "PUZ"
   add "$dir" "H" "Gals Panic S2 (Europe, version 3).mra" "_Gals Panic S2" "" "PUZ"
   add "$dir" "H" "Gals Panic SU (Korea, version 5).mra" "_Gals Panic SU" "" "PUZ"
   add "$dir" "H" "Puzz Loop (Europe, v0.94).mra" "_Puzz Loop" "" "PUZ"
   add "$dir" "H" "Tel Jan.mra" "_Tel Jan" "" ""
   add "$dir" "H" "VS Mahjong Otome Ryouran (revision 2).mra" "_VS Mahjong Otome Ryouran" "" ""
   add "$dir" "H" "VS Block Breaker (Europe).mra" "_VS Block Breaker" "" ""
  dot
fi
