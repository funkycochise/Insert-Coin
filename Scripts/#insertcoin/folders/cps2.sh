 #!/bin/bash  

source ./folders/functions.sh

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_CPS2"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "19XX The War Against Destiny (Euro 960104).mra" "_19XX The War Against Destiny"
   addgame "Dimahoo (Euro 000121).mra" "_Dimahoo"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "1944 The Loop Master (Euro 000620).mra" "_1944 The Loop Master"
   addgame "Adventure Quiz Capcom World 2 (Japan 920611).mra" "_Adventure Quiz Capcom World 2"
   addgame "Alien vs. Predator (Euro 940520).mra" "_Alien vs. Predator"
   addgame "Armored Warriors (Euro 941024).mra" "_Armored Warriors"
   addgame "Battle Circuit (Euro 970319).mra" "_Battle Circuit"
   addgame "Capcom Sports Club (Euro 971017).mra" "_Capcom Sports Club"
   addgame "Cyberbots Fullmetal Madness (Euro 950424).mra" "_Cyberbots Fullmetal Madness"
   addgame "Darkstalkers The Night Warriors (Euro 940705).mra" "_Darkstalkers The Night Warriors"
   addgame "Dungeons & Dragons Shadow over Mystara (Euro 960619).mra" "_Dungeons & Dragons Shadow over Mystara"
   addgame "Dungeons & Dragons Tower of Doom (Euro 940412).mra" "_Dungeons & Dragons Tower of Doom"
   addgame "Eco Fighters (World 931203).mra" "_Eco Fighters"
   addgame "Giga Wing (USA 990222).mra" "_Giga Wing"
   addgame "Hyper Street Fighter II The Anniversary Edition (USA 040202).mra" "_Hyper Street Fighter II The Anniversary Edition"
   addgame "Janpai Puzzle Choukou (Japan 010820).mra" "_Janpai Puzzle Choukou"
   addgame "Jyangokushi Haoh no Saihai (Japan 990527).mra" "_Jyangokushi Haoh no Saihai"
   addgame "Mars Matrix Hyper Solid Shooting (USA 000412).mra" "_Mars Matrix Hyper Solid Shooting"
   addgame "Marvel Super Heroes (Euro 951024).mra" "_Marvel Super Heroes"
   addgame "Marvel Super Heroes Vs. Street Fighter (Euro 970625).mra" "_Marvel Super Heroes Vs. Street Fighter"
   addgame "Marvel Vs. Capcom Clash of Super Heroes (Euro 980123).mra" "_Marvel Vs. Capcom Clash of Super Heroes"
   addgame "Mega Man 2 The Power Fighters (USA 960708).mra" "_Mega Man 2 The Power Fighters"
   addgame "Mighty! Pang (Euro 001010).mra" "_Mighty! Pang"
   addgame "Night Warriors Darkstalkers' Revenge (Euro 950316).mra" "_Night Warriors Darkstalkers' Revenge"
   addgame "Pnickies (Japan 940608).mra" "_Pnickies"
   addgame "Progear (USA 010117).mra" "_Progear"
   addgame "Puzz Loop 2 (Euro 010302).mra" "_Puzz Loop 2"
   addgame "Quiz Nanairo Dreams Nijiirochou no Kiseki (Japan 96086).mra" "_Quiz Nanairo Dreams Nijiirochou no Kiseki"
   addgame "Ring of Destruction Slammasters II (Euro 940902).mra" "_Ring of Destruction Slam Masters II"
   addgame "Street Fighter Alpha 2 (Euro 960229).mra" "_Street Fighter Alpha 2"
   addgame "Street Fighter Alpha 3 (Euro 980904).mra" "_Street Fighter Alpha 3"
   addgame "Street Fighter Zero 3 Challenger's Edition (USA 980904).mra" "_Street Fighter Alpha 3"
   addgame "Street Fighter Alpha 3 Challenger's Edition (USA 980904).mra" "_Street Fighter Alpha 3"
   addgame "Street Fighter Zero (Japan 950727).mra" "_Street Fighter Alpha Warriors' Dreams"
   addgame "Street Fighter Zero 2 Alpha (Asia 960826).mra" "_Street Fighter Zero 2 Alpha"
   addgame "Super Gem Fighter Mini Mix (USA 970904).mra" "_Super Gem Fighter Mini Mix"
   addgame "Super Puzzle Fighter II Turbo (Euro 960529).mra" "_Super Puzzle Fighter II Turbo"
   addgame "Super Street Fighter II The New Challengers (World 931005).mra" "_Super Street Fighter II The New Challengers"
   addgame "Super Street Fighter II Turbo (World 940223).mra" "_Super Street Fighter II Turbo"
   addgame "Vampire Hunter 2 Darkstalkers Revenge (Japan 970929).mra" "_Vampire Hunter 2 Darkstalkers Revenge"
   addgame "Vampire Savior 2 The Lord of Vampire (Japan 970913).mra" "_Vampire Savior 2 The Lord of Vampire"
   addgame "Vampire Savior The Lord of Vampire (Euro 970519).mra" "_Vampire Savior The Lord of Vampire"
   addgame "X-Men Children of the Atom (Euro 950331).mra" "_X-Men Children of the Atom"
   addgame "X-Men Vs. Street Fighter (Euro 961004).mra" "_X-Men Vs. Street Fighter"
   addgame "Final Fight AE CPS2 Patch.mra" "_Final Fight AE"

fi

exit 0