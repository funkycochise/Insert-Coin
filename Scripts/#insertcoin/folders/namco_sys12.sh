#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$namco_sys12
else
   dir=$namco
fi

resh=$(exist "Tekken 3 (World TET2-VER.E1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Ehrgeiz (World, EG2-VER.A).mra" "_Ehrgeiz" "" ""
   add "$dir" "H" "Fighting Layer (Asia, FTL3-VER.A).mra" "_Fighting Layer" "" "VSF"
   add "$dir" "H" "Libero Grande (World LG2-VER.A).mra" "_Libero Grande" "" ""
   add "$dir" "H" "Oh! Bakyuuun (Japan OB1-VER.A).mra" "_Oh! Bakyuuun" "" ""
   add "$dir" "H" "Soul Calibur (World SOC12-VER.A2).mra" "_Soul Calibur" "" "VSF"
   add "$dir" "H" "Super World Stadium '98 (Japan SS81-VER.A).mra" "_Super World Stadium '98 (Japan SS81-VER.A).mra" "" "SPO"
   add "$dir" "H" "Super World Stadium '99 (Japan SS91-VER.A3).mra" "_Super World Stadium '99" "" ""
   add "$dir" "H" "Tekken 3 (World TET2-VER.E1).mra" "_Tekken 3" "" "VSF"
   dot
fi
