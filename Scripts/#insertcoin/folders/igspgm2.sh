#!/bin/bash
source ./folders/functions.sh
dir=$igspgm2

resh=$(exist "Knights of Valour 2 New Legend (V302, Oversea).mra")
resv=$(exist "DoDonPachi Dai-Ou-Jou Tamashii (V201, China).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "DoDonPachi Dai-Ou-Jou Tamashii (V201, China).mra" "_DoDonPachi Dai-Ou-Jou Tamashii" "" "STG"
   add "$dir" "H" "Knights of Valour 2 New Legend (V302, Oversea).mra" "_Knights of Valour 2 New Legend" "" "BEA"
   add "$dir" "H" "Knights of Valour 3 (V104, China, Hong Kong, Taiwan).mra" "_Knights of Valour 3" "" "BEA"
   add "$dir" "H" "Oriental Legend 2 (V104, Oversea).mra" "_Oriental Legend 2" "" "BEA"
   add "$dir" "H" "The King of Fighters '98 - Ultimate Match HERO (China, V100, 09-08-23).mra" "_The King of Fighters '98 - Ultimate Match HERO" "" "VSF"
   dot
fi
