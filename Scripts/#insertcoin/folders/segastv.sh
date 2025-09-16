#!/bin/bash
source ./folders/functions.sh
loadsetup "force"

if [ -f "$names" ]; then
   source <(grep segastv $names)
else
   segastv="_Sega-Titan Video"
fi
if [ -f "$names" ]; then
   source <(grep sega $names)
else
   sega="_Sega"
fi
if [ "$show_system" == "1" ]; then
   dir=$segastv
else
   dir=$sega
fi

resh=$(exist "Die Hard Arcade (UET 960515 V1.000).mra")
resv=$(exist "Shienryu (JUET 961226 V1.000).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
	outdir=$1

	add "$dir" "V" "Shienryu (JUET 961226 V1.000).mra" "_Shienryu" "" "STG"

	add "$dir" "H" "Astra SuperStars (J 980514 V1.002).mra" "_Astra SuperStars" "" "VSF"
	add "$dir" "H" "Baku Baku Animal (J 950407 V1.000).mra" "_Baku Baku Animal"
	add "$dir" "H" "Batman Forever (JUE 960507 V1.000).mra" "_Batman Forever" "" "BEA"
	add "$dir" "H" "Columns '97 (JET 961209 V1.000).mra" "_Columns '97" "" "PUZ"
	add "$dir" "H" "Cotton 2 (JUET 970902 V1.000).mra" "_Cotton 2" "" "STG"
	add "$dir" "H" "Cotton Boomerang (JUET 980709 V1.000).mra" "_Cotton Boomerang" "" "STG"
	add "$dir" "H" "Critter Crusher (EA 951204 V1.000).mra" "_Critter Crusher"
	add "$dir" "H" "DaeJeon! SanJeon SuJeon (AJTUE 990412 V1.000).mra" "_DaeJeon! SanJeon SuJeon"
	add "$dir" "H" "Danchi de Hanafuda (J 990607 V1.400).mra" "_Danchi de Hanafuda"
	add "$dir" "H" "Danchi de Quiz Okusan Yontaku Desuyo! (J 001128 V1.200).mra" "_Danchi de Quiz Okusan Yontaku Desuyo!"
	#add "$dir" "H" "Decathlete (JUET 960424 V1.000).mra" "_Decathlete"
	add "$dir" "H" "Decathlete (JUET 960709 V1.001).mra" "_Decathlete"
	add "$dir" "H" "Die Hard Arcade (UET 960515 V1.000).mra" "_Die Hard Arcade"
	add "$dir" "H" "Dynamite Deka (J 960515 V1.000).mra" "_Die Hard Arcade"
	add "$dir" "H" "Ejihon Tantei Jimusyo (J 950613 V1.000).mra" "_Ejihon Tantei Jimusyo"
	add "$dir" "H" "Final Arch (J 950714 V1.001).mra" "_Super Major League"
	#add "$dir" "H" "Final Fight Revenge - Final Revenge (JUET 990714 V1.000).mra" "_Final Fight Revenge"
	add "$dir" "H" "Final Fight Revenge - Final Revenge (JUET 990930 V1.100).mra" "_Final Fight Revenge"
	add "$dir" "H" "Find Love (J 971212 V1.000).mra" "_Find Love"
	add "$dir" "H" "Funky Head Boxers (JUETBKAL 951218 V1.000).mra" "_Funky Head Boxers"
	add "$dir" "H" "Golden Axe - The Duel (JUETL 950117 V1.000).mra" "_Golden Axe - The Duel"
	add "$dir" "H" "Groove on Fight - Gouketsuji Ichizoku 3 (J 970416 V1.001).mra" "_Groove on Fight - Gouketsuji Ichizoku 3" "" "VSF"
	add "$dir" "H" "Guardian Force (JUET 980318 V0.105).mra" "_Guardian Force"
	add "$dir" "H" "Hanagumi Taisen Columns - Sakura Wars (J 971007 V1.010).mra" "_Hanagumi Taisen Columns - Sakura Wars"
	add "$dir" "H" "Karaoke Quiz Intro Don Don! (J 960213 V1.000).mra" "_Karaoke Quiz Intro Don Don!"
	add "$dir" "H" "Magical Zunou Power (J 961031 V1.000).mra" "_Magical Zunou Power"
	add "$dir" "H" "Maru-Chan de Goo! (J 971216 V1.000).mra" "_Maru-Chan de Goo!"
	add "$dir" "H" "Mausuke no Ojama the World (J 960314 V1.000).mra" "_Mausuke no Ojama the World"
	add "$dir" "H" "Microman Battle Charge (J 990326 V1.000).mra" "_Microman Battle Charge"
	add "$dir" "H" "Name Club Disney (J 980614 V1.000).mra" "_Name Club Disney"
	add "$dir" "H" "Name Club Ver.3 (J 970723 V1.000).mra" "_Name Club Ver.3"
	add "$dir" "H" "Othello Shiyouyo (J 980423 V1.002).mra" "_Othello Shiyouyo"
	add "$dir" "H" "Pebble Beach - The Great Shot (JUE 950913 V0.990).mra" "_Pebble Beach - The Great Shot "
	add "$dir" "H" "Princess Clara Daisakusen (J 960910 V1.000).mra" "_Princess Clara Daisakusen"
	add "$dir" "H" "Print Club 2 (U 970921 V1.000).mra" "_Print Club 2"
	add "$dir" "H" "Print Club 2 Vol. 3 (U 990310 V1.000).mra" "_Print Club 2 Vol. 3"
	add "$dir" "H" "Print Club Pokemon B (U 991126 V1.000).mra" "_Print Club Pokemon B"
	add "$dir" "H" "Pro Mahjong Kiwame S (J 951020 V1.208).mra" "_Pro Mahjong Kiwame S "
	add "$dir" "H" "Puyo Puyo Sun (J 961115 V0.001).mra" "_Puyo Puyo Sun" "" "PUZ"
	add "$dir" "H" "Puzzle & Action- BoMulEul Chajara (JUET 970125 V2.00K).mra" "_Puzzle & Action_ BoMulEul Chajara"
	add "$dir" "H" "Puzzle & Action- Sando-R (J 951114 V1.000).mra" "_Puzzle & Action_ Sando-R"
	add "$dir" "H" "Puzzle & Action- Treasure Hunt (JUET 970901 V2.00E).mra" "_Puzzle & Action_ Treasure Hunt"
	add "$dir" "H" "Radiant Silvergun (JUET 980523 V1.000).mra" "_Radiant Silvergun" "" "STG"
	add "$dir" "H" "Sea Bass Fishing (JUET 971110 V0.001).mra" "_Sea Bass Fishing"
	add "$dir" "H" "Shanghai - The Great Wall - Shanghai Triple Threat (JUE 950623 V1.005).mra" "_Shanghai - The Great Wall - Shanghai Triple Threat"
	add "$dir" "H" "Soukyugurentai - Terra Diver (JUET 960821 V1.000).mra" "_Soukyugurentai - Terra Diver" "" "STG"
	add "$dir" "H" "Steep Slope Sliders (JUET 981110 V1.000).mra" "_Steep Slope Sliders"
	add "$dir" "H" "Stress Busters (J 981020 V1.000).mra" "_Stress Busters"
	add "$dir" "H" "Suikoenbu - Outlaws of the Lost Dynasty (JUETL 950314 V2.001).mra" "_Suikoenbu - Outlaws of the Lost Dynasty"
	add "$dir" "H" "Super Major League (U 960108 V1.000).mra" "_Super Major League"
	add "$dir" "H" "Taisen Tanto-R Sashissu!! (J 980216 V1.000).mra" "_DaeJeon! SanJeon SuJeon"
	add "$dir" "H" "Technical Bowling (J 971212 V1.000).mra" "_Technical Bowling"
	add "$dir" "H" "Tecmo World Cup '98 (JUET 980410 V1.000).mra" "_Tecmo World Cup '98"
	add "$dir" "H" "Touryuu Densetsu Elan-Doree - Elan Doree - Legend of Dragoon (JUET 980922 V1.006).mra" "_Elan Doree - Legend of Dragoon" "" "VSF"
	add "$dir" "H" "Virtua Fighter Kids (JUET 960319 V0.000).mra" "_Virtua Fighter Kids"
	add "$dir" "H" "Virtua Fighter Remix (JUETBKAL 950428 V1.000).mra" "_Virtua Fighter Remix" 
	add "$dir" "H" "Virtual Mahjong (J 961214 V1.000).mra" "_Virtual Mahjong"
	add "$dir" "H" "Virtual Mahjong 2 - My Fair Lady (J 980608 V1.000).mra" "_Virtual Mahjong 2 - My Fair Lady"
	add "$dir" "H" "Winter Heat (JUET 971012 V1.000).mra" "_Winter Heat"
	add "$dir" "H" "Zen Nippon Pro-Wrestling Featuring Virtua (J 971123 V1.000).mra" "_Zen Nippon Pro-Wrestling Featuring Virtua"

	dot
fi