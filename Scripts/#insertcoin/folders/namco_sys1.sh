#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep namco_sys1 $names)
else
   namco_sys1="_Namco-System-1"
fi
if [ -f "$names" ]; then
   source <(grep namco $names)
else
   namco="_Namco"
fi
if [ "$show_system" == "1" ]; then
   dir=$namco_sys1
else
   dir=$namco
fi

resh=$(exist "Splatter House (World, new version (SH3)).mra")
resv=$(exist "Galaga '88.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Bakutotsu Kijuutei.mra" "_Bakutotsu Kijuutei" "" "STG"
   add "$dir" "V" "Blast Off (Japan).mra" "_Blast Off" "" "SPO" "" "STG"
   add "$dir" "V" "Blazer (Japan).mra" "_Blazer" "" "STG"
   add "$dir" "V" "Dangerous Seed (Japan).mra" "_Dangerous Seed" "" "STG"
   add "$dir" "V" "Dragon Spirit (new version (DS3)).mra" "_Dragon Spirit" "" "STG"
   add "$dir" "V" "Galaga '88.mra" "_Galaga '88" "" "STG"
   add "$dir" "V" "Pac-Mania.mra" "_Pac-Mania" "" "ACT"
   add "$dir" "V" "Quester (Japan).mra" "_Quester" "" "PUZ"
   add "$dir" "V" "Rompers (Japan, new version (Rev B)).mra" "_Rompers" "" "ACT"

   add "$dir" "H" "Chou Zetsurinjin Berabowman (Japan, Rev C).mra" "_Chou Zetsurinjin Berabowman" "" "ACT"
   add "$dir" "H" "Boxy Boy (World, SB2).mra" "_Boxy Boy" "" "PUZ"
   add "$dir" "H" "Face Off (Japan 2 Players).mra" "_Face Off" "" "SPO"
   add "$dir" "H" "Marchen Maze (Japan).mra" "_Marchen Maze" "" "ACT"
   add "$dir" "H" "Pistol Daimyo no Bouken (Japan).mra" "_Pistol Daimyo no Bouken" "" "STG"
   add "$dir" "H" "Pro Tennis World Court (Japan).mra" "_Pro Tennis World Court" "" "SPO"
   add "$dir" "H" "Pro Yakyuu World Stadium (Japan).mra" "_Pro Yakyuu World Stadium" "" "SPO"
   add "$dir" "H" "Shadowland (YD3).mra" "_Shadowland" "_Youkai Douchuuki" "ACT"
   add "$dir" "H" "Splatter House (World, new version (SH3)).mra" "_Splatter House" "" "ACT"
   add "$dir" "H" "Tank Force (US, 2 Players).mra" "_Tank Force" "" "ACT"
   dot
fi