#!/bin/bash
source ./folders/functions.sh
dir=$cavecv1k

resh=$(exist "Deathsmiles (Japan, 2007-10-09 MASTER VER) .mra")
resv=$(exist "Espgaluda II (Japan, 2005-11-14.MASTER VER.).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Akai Katana (Japan, 2010.8.13 MASTER VER.).mra" "_Akai Katana" "" "STG"
   add "$dir" "H" "Deathsmiles (Japan, 2007-10-09 MASTER VER).mra" "_Deathsmiles" "" "STG"
   add "$dir" "H" "Deathsmiles MegaBlack Label (Japan, 2008.10.06 MEGABLACK LABEL VER).mra" "_Deathsmiles" "" "STG"

   add "$dir" "V" "DoDonPachi Dai-Fukkatsu Ver 1.5 (Japan, 2008.06.23 MASTER VER 1.5).mra" "_DoDonPachi Dai-Fukkatsu" "" "STG"
   add "$dir" "H" "DoDonPachi SaiDaiOuJou (Japan, 2012.4.20).mra" "_DoDonPachi SaiDaiOuJou" "" "STG"

   add "$dir" "V" "Espgaluda II (Japan, 2005-11-14.MASTER VER.).mra" "_Espgaluda II" "" "STG"
   add "$dir" "V" "Ibara (Japan, 2005 03 22 MASTER VER..).mra" "_Ibara" "_Ibara" "" "STG"
   add "$dir" "V" "Ibara Kuro Black Label (Japan, 2006-02-06. MASTER VER.).mra" "_Ibara" "" "STG"
   add "$dir" "V" "Muchi Muchi Pork! (Japan, 2007-4-17 MASTER VER.).mra" "_Muchi Muchi Pork!" "" "STG"
   add "$dir" "V" "Mushihime-Sama (Japan, 2004-10-12.MASTER VER.).mra" "_Mushihime-Sama" "" "STG"
   add "$dir" "V" "Mushihime-Sama Futari Ver 1.5 (2006-12-08.MASTER VER. 1.54.).mra" "_Mushihime-Sama Futari" "" "STG"
   add "$dir" "V" "Mushihime-Sama Futari Black Label (2007-12-11 BLACK LABEL VER).mra" "_Mushihime-Sama Futari" "" "STG"
   add "$dir" "V" "Mushihime-Sama Futari Ver 1.5 (2006.12.08.MASTER VER. 1.54.).mra" "_Mushihime-Sama Futari" "" "STG"
   add "$dir" "V" "Mushihime-Sama Futari Black Label - Another Ver (2009-11-27 INTERNATIONAL BL).mra" "_Mushihime-Sama Futari" "" "STG"
   add "$dir" "V" "Mushihime-Sama Matsuri Ver 1.5 (2011.5.23 CAVEMATSURI VER1.5).mra" "_Mushihime-Sama" "" "STG"
   add "$dir" "H" "Puzzle! Mushihime-Tama (Japan, 2005-09-09.MASTER VER) .mra" "_Puzzle! Mushihime-Tama" "" "PUZ"
   add "$dir" "V" "Pink Sweets Ibara Sorekara (Japan, 2006-04-06 MASTER VER....) .mra" "_Pink Sweets Ibara Sorekara" "" "STG"

   dot
fi
