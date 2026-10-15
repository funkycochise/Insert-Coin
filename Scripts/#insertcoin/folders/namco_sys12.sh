#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys12
else
   dir=$namco
fi

resh=$(exist "Tekken 3 (World TET2-VER.E1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Aqua Rush (Japan AQ1-VER.A1).mra" "_Aqua Rush" "" "RAC"
   add "$dir" "H" "Attack Pla Rail (Japan, AP1-VER.A).mra" "_Attack Pla Rail" "" "ACT"
   add "$dir" "H" "Derby Quiz My Dream Horse (Japan, MDH1-VER.A2).mra" "_Derby Quiz My Dream Horse" "" "PUZ"
   add "$dir" "H" "Ghoul Panic (World OB2-VER.A).mra" "_Ghoul Panic" "" ""
   add "$dir" "H" "Golgo 13 (Japan, GLG1-VER.A).mra" "_Golgo 13" "" ""
   add "$dir" "H" "Gunbarl (Japan GNB4-VER.A).mra" "_Point Blank 2" "" ""
   add "$dir" "H" "Kaiun Quiz (Japan, KW1-VER.A).mra" "_Kaiun Quiz" "" "PUZ"
   add "$dir" "H" "Kart Duel (World, KTD2-VER.A).mra" "_Kart Duel" "" "RAC"
   add "$dir" "H" "Mr. Driller (Japan, DRI1-VER.A2).mra" "_Mr. Driller" "" "PUZ"
   add "$dir" "H" "Paca Paca Passion (Japan PPP1-VER.A2).mra" "_Paca Paca Passion" "" ""
   add "$dir" "H" "Paca Paca Passion 2 (Japan PKS1-VER.A).mra" "_Paca Paca Passion 2" "" ""
   add "$dir" "H" "Paca Paca Passion Special (Japan PSP1-VER.A).mra" "_Paca Paca Passion Special" "" ""
   add "$dir" "H" "Point Blank 2 (World GNB5-VER.A).mra" "_Point Blank 2" "" ""
   add "$dir" "H" "Shin Nihon Pro Wrestling Toukon Retsuden 3 Arcade Edition (Japan TR1-VER.A).mra" "_Shin Nihon Pro Wrestling Toukon Retsuden 3 Arcade Edition" "" "SPO"
   add "$dir" "H" "Techno Drive (Japan, TH1-VER.B).mra" "_Techno Drive" "" "RAC"
   add "$dir" "H" "Tekken Tag Tournament (World TEG2-VER.C1).mra" "_Tekken Tag Tournament" "" "VSF"
   add "$dir" "H" "Tenkomori Shooting (World, TKM2-VER.A1).mra" "_Tenkomori Shooting" "" ""
   add "$dir" "H" "Truck Kyosokyoku (US, TKK2-VER.A).mra" "_Truck Kyosokyoku" "" "RAC"
   add "$dir" "H" "Um Jammer Lammy NOW! (Japan, UL1-VER.A).mra" "_Um Jammer Lammy NOW!" "" ""
   dot
fi
