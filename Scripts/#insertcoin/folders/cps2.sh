#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep cps2 $names)
else
   cps2="_CPS2"
fi

if [ -f "$names" ]; then
   source <(grep capcom $names)
else
   capcom="_Capcom-Mitchell"
fi
if [ "$show_system" == "1" ]; then
   dir=$cps2
else
   dir=$capcom
fi

resh=$(exist "Alien vs. Predator (Euro 940520).mra")
resv=$(exist "19XX The War Against Destiny (Euro 960104).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V" "19XX The War Against Destiny (Euro 960104).mra" "_19XX The War Against Destiny" "" "STG"
   add "$dir" "V" "Dimahoo (Euro 000121).mra" "_Dimahoo" "" "STG"
   add "$dir" "H" "1944 The Loop Master (Euro 000620).mra" "_1944 The Loop Master" "" "STG"
   add "$dir" "H" "Adventure Quiz Capcom World 2 (Japan 920611).mra" "_Adventure Quiz Capcom World 2"
   add "$dir" "H" "Alien vs. Predator (Euro 940520).mra" "_Alien vs. Predator" "" "BEA"
   add "$dir" "H" "Armored Warriors (Euro 941024).mra" "_Armored Warriors" "" "BEA"
   add "$dir" "H" "Battle Circuit (Euro 970319).mra" "_Battle Circuit" "" "BEA"
   add "$dir" "H" "Capcom Sports Club (Euro 971017).mra" "_Capcom Sports Club" "" "SPO"
   add "$dir" "H" "Cyberbots Fullmetal Madness (Euro 950424).mra" "_Cyberbots Fullmetal Madness" "" "BEA"
   add "$dir" "H" "Darkstalkers The Night Warriors (Euro 940705).mra" "_Darkstalkers The Night Warriors" "" "VSF"
   add "$dir" "H" "Dungeons & Dragons Shadow over Mystara (Euro 960619).mra" "_Dungeons & Dragons Shadow over Mystara" "" "ACT"
   add "$dir" "H" "Dungeons & Dragons Tower of Doom (Euro 940412).mra" "_Dungeons & Dragons Tower of Doom" "" "ACT"
   add "$dir" "H" "Eco Fighters (World 931203).mra" "_Eco Fighters" "" "STG"
   add "$dir" "H" "Giga Wing (USA 990222).mra" "_Giga Wing" "" "STG"
   add "$dir" "H" "Hyper Street Fighter II The Anniversary Edition (USA 040202).mra" "_Hyper Street Fighter II The Anniversary Edition" "" "VSF"
   add "$dir" "H" "Janpai Puzzle Choukou (Japan 010820).mra" "_Janpai Puzzle Choukou"
   add "$dir" "H" "Jyangokushi Haoh no Saihai (Japan 990527).mra" "_Jyangokushi Haoh no Saihai"
   add "$dir" "H" "Mars Matrix Hyper Solid Shooting (USA 000412).mra" "_Mars Matrix Hyper Solid Shooting" "" "STG"
   add "$dir" "H" "Marvel Super Heroes (Euro 951024).mra" "_Marvel Super Heroes" "" "VSF"
   add "$dir" "H" "Marvel Super Heroes Vs. Street Fighter (Euro 970625).mra" "_Marvel Super Heroes Vs. Street Fighter"
   add "$dir" "H" "Marvel Vs. Capcom Clash of Super Heroes (Euro 980123).mra" "_Marvel Vs. Capcom Clash of Super Heroes"
   add "$dir" "H" "Mega Man 2 The Power Fighters (USA 960708).mra" "_Mega Man 2 The Power Fighters" "" "VSF"
   add "$dir" "H" "Mighty! Pang (Euro 001010).mra" "_Mighty! Pang" "" "ACT"
   add "$dir" "H" "Night Warriors Darkstalkers' Revenge (Euro 950316).mra" "_Night Warriors Darkstalkers' Revenge" "" "VSF"
   add "$dir" "H" "Pnickies (Japan 940608).mra" "_Pnickies"
   add "$dir" "H" "Progear (USA 010117).mra" "_Progear" "" "STG"
   add "$dir" "H" "Puzz Loop 2 (Euro 010302).mra" "_Puzz Loop 2" "" "PUZ"
   add "$dir" "H" "Quiz Nanairo Dreams Nijiirochou no Kiseki (Japan 96086).mra" "_Quiz Nanairo Dreams Nijiirochou no Kiseki"
   add "$dir" "H" "Ring of Destruction Slammasters II (Euro 940902).mra" "_Ring of Destruction Slam Masters II" "" "VSF"
   add "$dir" "H" "Street Fighter Alpha 2 (Euro 960229).mra" "_Street Fighter Alpha 2" "" "VSF"
   add "$dir" "H" "Street Fighter Alpha 3 (Euro 980904).mra" "_Street Fighter Alpha 3" "" "VSF"
   add "$dir" "H" "Street Fighter Zero 3 Challenger's Edition (USA 980904).mra" "_Street Fighter Alpha 3" "" "VSF"
   add "$dir" "H" "Street Fighter Alpha 3 Challenger's Edition (USA 980904).mra" "_Street Fighter Alpha 3" "" "VSF"
   add "$dir" "H" "Street Fighter Zero (CPS Changer, Japan 951020).mra" "_Street Fighter Alpha Warriors' Dreams" "" "VSF"
   add "$dir" "H" "Street Fighter Zero 2 Alpha (Asia 960826).mra" "_Street Fighter Zero 2 Alpha" "" "VSF"
   add "$dir" "H" "Super Gem Fighter Mini Mix (USA 970904).mra" "_Super Gem Fighter Mini Mix" "" "PUZ"
   add "$dir" "H" "Super Puzzle Fighter II Turbo (Euro 960529).mra" "_Super Puzzle Fighter II Turbo" "" "VSF"
   add "$dir" "H" "Super Street Fighter II The New Challengers (World 931005).mra" "_Super Street Fighter II The New Challengers" "" "VSF"
   add "$dir" "H" "Super Street Fighter II Turbo (World 940223).mra" "_Super Street Fighter II Turbo" "" "VSF"
   add "$dir" "H" "Vampire Hunter 2 Darkstalkers Revenge (Japan 970929).mra" "_Vampire Hunter 2 Darkstalkers Revenge" "" "VSF"
   add "$dir" "H" "Vampire Savior 2 The Lord of Vampire (Japan 970913).mra" "_Vampire Savior 2 The Lord of Vampire" "" "VSF"
   add "$dir" "H" "Vampire Savior The Lord of Vampire (Euro 970519).mra" "_Vampire Savior The Lord of Vampire" "" "VSF"
   add "$dir" "H" "X-Men Children of the Atom (Euro 950331).mra" "_X-Men Children of the Atom" "" "VSF"
   add "$dir" "H" "X-Men Vs. Street Fighter (Euro 961004).mra" "_X-Men Vs. Street Fighter" "" "VSF"
   add "$dir" "H" "Final Fight AE CPS2 Patch.mra" "_Final Fight AE" "" "BEA"
   dot
fi
