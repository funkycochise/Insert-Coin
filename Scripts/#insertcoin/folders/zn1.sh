#!/bin/bash
source ./folders/functions.sh
dir=$zn1

resh=$(exist "Splatter House (World, new version (SH3)).mra")
resv=$(exist "Aero Fighters Special (USA).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Aero Fighters Special (USA).mra" "_Aero Fighters Special" "" "STG"
   add "$dir" "V" "Brave Blade (World).mra" "_Brave Blade" "" "STG"

   add "$dir" "H" "1 on 1 Government (Japan).mra" "_1 on 1 Government" "" "SPO"
   add "$dir" "H" "Bloody Roar (Japan, Jun 21 1997).mra" "_Bloody Roar" "" "VSF"
   add "$dir" "H" "Bloody Roar 2 (World).mra" "_Bloody Roar 2" "" "VSF"
   add "$dir" "H" "Dead or Alive ++ (Japan USA Export).mra" "_Dead or Alive ++" "" "VSF"
   add "$dir" "H" "Fighters' Impact (Ver 2.02A).mra" "_Fighters' Impact" "" "VSF"
   add "$dir" "H" "Flame Gunner (Export).mra" "_Flame Gunner" "" ""
   add "$dir" "H" "Gallop Racer 2 (Export).mra" "_Gallop Racer 2" "" ""
   add "$dir" "H" "Gallop Racer 3 (Export).mra" "_Gallop Racer 3" "" ""
   add "$dir" "H" "G-Darius Ver.2 (Ver 2.03J).mra" "_G-Darius" "" "STG"
   add "$dir" "H" "Heaven's Gate.mra" "_Heaven's Gate" "" ""
   add "$dir" "H" "Logic Pro Adventure (Japan).mra" "_Logic Pro Adventure" "" ""
   add "$dir" "H" "Magical Date (Ver 2.02J).mra" "_Magical Date" "" ""
   add "$dir" "H" "Monster Farm Jump (Japan).mra" "_Monster Farm Jump" "" ""
   add "$dir" "H" "Psychic Force (Ver 2.4O).mra" "_Psychic Force" "" ""
   add "$dir" "H" "Ray Storm (Ver 2.06A).mra" "_Ray Storm" "" "STG"
   add "$dir" "H" "Shanghai Matekibuyuu (Japan).mra" "_Shanghai Matekibuyuu" "" ""
   add "$dir" "H" "Sonic Wings Limited (Japan).mra" "_Sonic Wings Limited" "" ""
   add "$dir" "H" "Super Football Champ (Ver 2.5O).mra" "_Super Football Champ" "" "SPO"
   add "$dir" "H" "Tecmo World Cup Millennium (Japan).mra" "_Tecmo World Cup Millennium" "" "SPO"
   add "$dir" "H" "The Block Kuzushi (Japan).mra" "_The Block Kuzushi" "" ""
   add "$dir" "H" "Tondemo Crisis (Japan).mra" "_Tondemo Crisis" "" ""
   dot
fi