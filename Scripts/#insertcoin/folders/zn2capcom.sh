#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$zn2capcom
else
   dir=$capcom
fi

resh=$(exist "Splatter House (World, new version (SH3)).mra")
resv=$(exist "Aero Fighters Special (USA).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H" "Choukou Senki Kikaioh (Japan).mra" "_Choukou Senki Kikaioh" "" ""
   add "$dir" "H" "Plasma Sword - Nightmare of Bilstein (USA).mra" "_Plasma Sword - Nightmare of Bilstein" "" ""
   add "$dir" "H" "Rival Schools - United By Fate (Europe).mra" "_Rival Schools - United By Fate" "" ""
   add "$dir" "H" "Shiritsu Justice Gakuen - Legion of Heroes (Japan 971216).mra" "_Shiritsu Justice Gakuen - Legion of Heroes" "" ""
   add "$dir" "H" "Star Gladiator 2 - Nightmare of Bilstein (Japan).mra" "_Star Gladiator 2 - Nightmare of Bilstein (Japan)" "" ""
   add "$dir" "H" "Street Fighter EX2 (USA 980526).mra" "_Street Fighter EX2" "" "VSF"
   add "$dir" "H" "Street Fighter EX2 Plus (USA).mra" "_Street Fighter EX2 Plus" "" "VSF"
   add "$dir" "H" "Strider 2 (Europe).mra" "_Strider 2" "" "VSF"
   add "$dir" "H" "Tech Romancer (Europe).mra" "_Tech Romancer" "" ""
   add "$dir" "H" "Tetris - The Grand Master (Japan).mra" "_Tetris - The Grand Master" "" "PUZ"
   dot
fi