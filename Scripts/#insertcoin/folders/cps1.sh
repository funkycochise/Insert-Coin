#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep cps1 $names)
else
   cps1="_CPS1"
fi
if [ -f "$names" ]; then
   source <(grep capcom $names)
else
   capcom="_Capcom-Mitchell"
fi
if [ "$show_system" == "1" ]; then
   dir=$cps1
else
   dir=$capcom
fi

resh=$(exist "Ghouls'n Ghosts (World).mra")
resv=$(exist "1941 Counter Attack (World 900227).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V"  "1941 Counter Attack (World 900227).mra" "_1941 Counter Attack" "" "STG"
   add "$dir" "V"  "Mercs (World 900302).mra" "_Mercs" "" "RNG"
   add "$dir" "V"  "Varth Operation Thunderstorm (World 920714).mra" "_Varth  Operation Thunderstorm" "" "STG"

   add "$dir" "H"  "Adventure Quiz Capcom World 2 (Japan 920611).mra" "_Adventure Quiz Capcom World 2"
   add "$dir" "H"  "Captain Commando (World 911202).mra" "_Captain Commando" "" "BEA"
   add "$dir" "H"  "Carrier Air Wing (World 901012).mra" "_Carrier Air Wing" "" "STG"
   add "$dir" "H"  "Ghouls'n Ghosts (World).mra" "_Ghouls'n Ghosts" "" "ACT"
   add "$dir" "H"  "Dynasty Wars (USA, B-Board 89624B-x).mra" "_Dynasty Wars" "" "ACT"
   add "$dir" "H"  "Final Fight (World, set 1).mra" "_Final Fight" "" "BEA"
   add "$dir" "H"  "Forgotten Worlds (World, newer).mra" "_Forgotten Worlds" "" "STG"
   add "$dir" "H"  "Ganbare! Marine Kun -Japan 2K0411-.mra" "_Ganbare! Marine Kun"
   add "$dir" "H"  "Gulun.Pa! (Japan 931220 L) (prototype).mra" "_Gulun.Pa"
   add "$dir" "H"  "Knights of the Round (World 911127).mra" "_Knights of the Round" "" "ACT"
   add "$dir" "H"  "Magic Sword Heroic Fantasy (World 900725).mra" "_Magic Sword  Heroic Fantasy" "" "ACT"
   add "$dir" "H"  "Magical Pumpkin Puroland de Daibouken (Japan 960712).mra" "_Magical Pumpkin Puroland de Daibouken"
   add "$dir" "H"  "Mega Man The Power Battle (CPS1, USA 951006).mra" "_Mega Man  The Power Battle -CPS1" "" "VSF"
   add "$dir" "H"  "Mega Twins (World 900619).mra" "_Mega Twins" "" "RNG"
   add "$dir" "H"  "Nemo (World 901130).mra" "_Nemo" "" "RNG"
   add "$dir" "H"  "Pang! 3 (Euro 950601).mra" "_Pang! 3" "" "ACT"
   add "$dir" "H"  "Pnickies (Japan 940608).mra" "_Pnickies"
   add "$dir" "H"  "Pokonyan! Balloon (Japan 940322).mra" "_Pokonyan! Balloon"
   add "$dir" "H"  "Quiz & Dragons Capcom Quiz Game (USA 920701).mra" "_Quiz & Dragons  Capcom Quiz Game"
   add "$dir" "H"  "Quiz Tonosama no Yabou 2 Zenkoku-ban (Japan 950123).mra" "_Quiz Tonosama no Yabou 2  Zenkoku-ban"
   add "$dir" "H"  "Street Fighter II' Champion Edition (World 920513).mra" "_Street Fighter II' Champion Edition" "" "VSF"
   add "$dir" "H"  "Street Fighter II' Hyper Fighting (World 921209).mra" "_Street Fighter II' Hyper Fighting" "" "VSF"
   add "$dir" "H"  "Street Fighter II The World Warrior (World 910522).mra" "_Street Fighter II The World Warrior" "" "VSF"
   add "$dir" "H"  "Street Fighter Zero (CPS Changer, Japan 951020).mra" "_Street Fighter Zero -CPS Changer" "" "VSF"
   add "$dir" "H"  "Strider (USA, B-Board 89624B-2).mra" "_Strider" "" "RNG"
   add "$dir" "H"  "The King of Dragons (World 910805).mra" "_The King of Dragons" "" "ACT"
   add "$dir" "H"  "Three Wonders (World 910520).mra" "_Three Wonders" "" "STG"
   add "$dir" "H"  "U.N. Squadron (USA).mra" "_U.N. Squadron" "" "STG"
   add "$dir" "H"  "Willow (World).mra" "_Willow" "" "RNG"
   dot
fi