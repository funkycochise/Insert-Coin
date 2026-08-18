#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys12
else
   dir=$namco
fi

resh=$(exist "Tekken 3 (World TET2-VER.E1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Aqua Rush (Japan AQ1-VER.A1).mra" "_Aqua Rush" "" ""
   add "$dir" "H" "Ehrgeiz (World, EG2-VER.A).mra" "_Ehrgeiz" "" ""
   add "$dir" "H" "Fighting Layer (Asia, FTL3-VER.A).mra" "_Fighting Layer" "" "VSF"
   add "$dir" "H" "Libero Grande (World LG2-VER.A).mra" "_Libero Grande" "" ""
   add "$dir" "H" "Mr. Driller (Japan, DRI1-VER.A2).mra" "_Mr. Driller" "" "ACT"
   add "$dir" "H" "Oh! Bakyuuun (Japan OB1-VER.A).mra" "_Oh! Bakyuuun" "" ""
   add "$dir" "H" "Paca Paca Passion (Japan PPP1-VER.A2).mra" "_Paca Paca Passion" "" ""
   add "$dir" "H" "Paca Paca Passion 2 (Japan PKS1-VER.A).mra" "_Paca Paca Passion 2" "" ""
   add "$dir" "H" "Paca Paca Passion Special (Japan PSP1-VER.A).mra" "_Paca Paca Passion Special" "" ""
   add "$dir" "H" "Soul Calibur (World SOC12-VER.A2).mra" "_Soul Calibur" "" "VSF"
   add "$dir" "H" "Super World Stadium '98 (Japan SS81-VER.A).mra" "_Super World Stadium '98 (Japan SS81-VER.A).mra" "" "SPO"
   add "$dir" "H" "Super World Stadium '99 (Japan SS91-VER.A3).mra" "_Super World Stadium '99" "" ""
   add "$dir" "H" "Tekken 3 (World TET2-VER.E1).mra" "_Tekken 3" "" "VSF"
   add "$dir" "H" "Tekken Tag Tournament (World TEG2-VER.C1).mra" "_Tekken Tag Tournament" "" "VSF"
   dot
fi
