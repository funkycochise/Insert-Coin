#!/bin/bash
source ./folders/functions.sh
dir=$igspgm

resh=$(exist "Demon Front (ver. 105).mra")
resv=$(exist "DoDonPachi Dai-Ou-Jou Black Label (Japan, 2002.10.07 Black Ver., bootleg Knights of Valour Super Heroes conversion).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Demon Front (ver. 105).mra" "_Demon Front" "" "RNG"
   add "$dir" "V" "DoDonPachi Dai-Ou-Jou Black Label (Japan, 2002.10.07 Black Ver., bootleg Knights of Valour Super Heroes conversion).mra" "_DoDonPachi Dai-Ou-Jou" "" "STG"
   add "$dir" "V" "DoDonPachi II - Bee Storm (World, ver. 102).mra" "_DoDonPachi II" "" "STG"
   add "$dir" "H" "Dragon World 3 (ver. 106).mra" "_Dragon World 3" "" ""
   add "$dir" "H" "Dragon World 2001 (ver. 100, Japan).mra" "_Dragon World 2001" "" ""
   add "$dir" "V" "Espgaluda (2003.10.15 Master Ver, bootleg cartridge conversion).mra" "_Espgaluda" "" "STG"
   add "$dir" "V" "Ketsui Kizuna Jigoku Tachi (2003.01.01. Master Ver., bootleg cartridge conversion).mra" "_Ketsui Kizuna Jigoku Tachi" "" "STG"
   add "$dir" "H" "Knights of Valour 2 (ver. 107).mra" "_Knights of Valour 2" "" "VSF"
   add "$dir" "H" "Knights of Valour Super Heroes (ver. 100, CN).mra" "_Knights of Valour Super Heroes" "" "VSF"
   add "$dir" "H" "Martial Masters (ver. 104, 102, 102US).mra" "_Martial Masters" "" "VSF"
   add "$dir" "H" "Oriental Legend (ver. 126).mra" "_Oriental Legend" "" "VSF"
   add "$dir" "H" "Photo Y2K (ver. 102, Japanese Board).mra" "_Photo Y2K" "" "PUZ"
   add "$dir" "H" "The Killing Blade (ver. 109, Chinese Board).mra" "_The Killing Blade"
   add "$dir" "H" "Xiyou Shi E Zhuan Super (ver. 103, China, Tencent) (unprotected).mra" "_Xiyou Shi E Zhuan Super" 
   add "$dir" "H" "S.V.G. - Spectral vs Generation (ver. 200).mra" "_S.V.G. - Spectral vs Generation" "" "VSF"
   add "$dir" "H" "The Gladiator (ver. 101).mra" "_The Gladiator" "" "BEA"

dot
fi
