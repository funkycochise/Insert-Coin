 #!/bin/bash  

source ./folders/functions.sh

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_CPS1"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame  "1941 Counter Attack (World 900227).mra" "_1941 Counter Attack"
   addgame  "Mercs (World 900302).mra" "_Mercs"
   addgame  "Varth Operation Thunderstorm (World 920714).mra" "_Varth  Operation Thunderstorm"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame  "Adventure Quiz Capcom World 2 (Japan 920611).mra" "_Adventure Quiz Capcom World 2"
   addgame  "Captain Commando (World 911202).mra" "_Captain Commando"
   addgame  "Carrier Air Wing (World 901012).mra" "_Carrier Air Wing"
   addgame  "Ghouls'n Ghosts (World).mra" "_Ghouls'n Ghosts"
   addgame  "Dynasty Wars (USA, B-Board 89624B-x).mra" "_Dynasty Wars"
   addgame  "Final Fight (World, set 1).mra" "_Final Fight"
   addgame  "Forgotten Worlds -World, newer-.mra" "_Forgotten Worlds"
   addgame  "Ganbare! Marine Kun -Japan 2K0411-.mra" "_Ganbare! Marine Kun"
   addgame  "Gulun.Pa! (Japan 931220 L) (prototype).mra" "_Gulun.Pa"
   addgame  "Knights of the Round (World 911127).mra" "_Knights of the Round"
   addgame  "Magic Sword Heroic Fantasy (World 900725).mra" "_Magic Sword  Heroic Fantasy"
   addgame  "Magical Pumpkin Puroland de Daibouken (Japan 960712).mra" "_Magical Pumpkin Puroland de Daibouken"
   addgame  "Mega Man The Power Battle (CPS1, USA 951006).mra" "_Mega Man  The Power Battle -CPS1"
   addgame  "Mega Twins (World 900619).mra" "_Chiki Chiki Boys"
   addgame  "Nemo (World 901130).mra" "_Nemo"
   addgame  "Pang! 3 -Euro 950601-.mra" "_Pang! 3"
   addgame  "Pnickies (Japan 940608).mra" "_Pnickies"
   addgame  "Pokonyan! Balloon (Japan 940322).mra" "_Pokonyan! Balloon"
   addgame  "Quiz & Dragons Capcom Quiz Game (USA 920701).mra" "_Quiz & Dragons  Capcom Quiz Game"
   addgame  "Quiz Tonosama no Yabou 2 Zenkoku-ban (Japan 950123).mra" "_Quiz Tonosama no Yabou 2  Zenkoku-ban"
   addgame  "Street Fighter II' Champion Edition (World 920513).mra" "_Street Fighter II' Champion Edition"
   addgame  "Street Fighter II' Hyper Fighting (World 921209).mra" "_Street Fighter II' Hyper Fighting"
   addgame  "Street Fighter II The World Warrior (World 910522).mra" "_Street Fighter II The World Warrior"
   addgame  "Street Fighter Zero (CPS Changer, Japan 951020).mra" "_Street Fighter Zero -CPS Changer"
   addgame  "Strider (USA, B-Board 89624B-2).mra" "_Strider"
   addgame  "The King of Dragons (World 910805).mra" "_The King of Dragons"
   addgame  "Three Wonders (World 910520).mra" "_Three Wonders"
   addgame  "U.N. Squadron (USA).mra" "_U.N. Squadron"
   addgame  "Willow (World).mra" "_Willow"
fi


exit 0
