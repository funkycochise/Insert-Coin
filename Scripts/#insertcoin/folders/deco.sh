#!/bin/bash
source ./folders/functions.sh
dir=$deco

resh=$(exist "Chelnov - Atomic Runner (World).mra")
resv=$(exist "Burger Time (Set 1).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "V" "Burger Time (Set 1).mra" "_Burger Time" "" "ACT"
   add "$dir" "V" "Burnin' Rubber.mra" "_Burning Rubber" "" "ACT"
   add "$dir" "V" "Heavy Barrel (World).mra" "_Heavy Barrel" "" "RNG"
   add "$dir" "V" "Karate Champ (US).mra" "_Karate Champ" "" "SPO"
   add "$dir" "V" "Sky Smasher.mra" "_Sky Smasher" "" "STG"
   add "$dir" "V" "Wonder Planet (Japan).mra" "_Wonder Planet" "" "STG"

   add "$dir" "H" "Act-Fancer Cybernetick Hyper Weapon (World revision 3).mra" "_Act-Fancer" "" "ACT"
   add "$dir" "H" "Act-Fancer Cybernetick Hyper Weapon (World, Rev. 3) (Coc).mra" "_Act-Fancer" "" "ACT"

   add "$dir" "H" "Atomic Runner Chelnov (World).mra" "_Atomic Runner Chelnov" "" "ACT"
   add "$dir" "H" "Bad Dudes vs. Dragonninja (US, revision 1).mra" "_Bad Dudes vs. Dragonninja" "" "ACT"
   add "$dir" "H" "Boogie Wings (USA v1.7, 92.12.14).mra" "_Boogie Wings" "" "ACT"
   add "$dir" "H" "Boogie Wings (Euro v1.5, 92.12.07).mra" "_Boogie Wings" "" "ACT"
   add "$dir" "H" "Boogie Wings (USA v1.7, 92.12.14) (Coc).mra" "_Boogie Wings" "" "ACT"
   add "$dir" "H" "Boulder Dash - Boulder Dash Part 2 (World).mra" "_Boulder Dash" "" "ACT"
   add "$dir" "H" "Break Thru (World).mra" "_Break Thru" "" "ACT"
   add "$dir" "H" "Captain America and The Avengers (US, Rev 1.9).mra" "_Captain America and The Avengers" "" "BEA"
   add "$dir" "H" "Caveman Ninja (World ver 4).mra" "_Caveman Ninja" "" "ACT"
   add "$dir" "H" "Caveman Ninja (World, Ver. 4) (Coc).mra" "_Caveman Ninja" "" "ACT"
   add "$dir" "H" "Cobra-Command (World, Rev. 5).mra" "_Cobra-Command" "" "STG"
   add "$dir" "H" "Crude Buster (World, FX version).mra" "_Crude Buster" "" "BEA"
   add "$dir" "H" "Dark Seal (World, Rev. 3).mra" "_Dark Seal" 
   add "$dir" "H" "Express Raider.mra" "_Express Raider" "" "RNG"
   add "$dir" "H" "Hippodrome (US).mra" "_Hippodrome" "" "VSF"
   add "$dir" "H" "Karnov (US, rev 6).mra" "_Karnov" "" "RNG"
   add "$dir" "H" "Midnight Resistance (World, set 1).mra" "_Midnight Resistance" "" "RNG"
   add "$dir" "H" "Night Slashers (Japan Rev 1.2, DE-0397-0 PCB).mra" "_Night Slashers" "" "BEA"
   add "$dir" "H" "Psycho-Nics Oscar (World).mra" "_Psycho-Nics Oscar" "" "RNG"
   add "$dir" "H" "Robocop (World, revision 4).mra" "_Robocop" "" "RNG"
   add "$dir" "H" "Robocop 2 (USA v0.10).mra" "_Robocop2" "" "BEA"
   add "$dir" "H" "Secret Agent (World, revision 3).mra" "_Secret Agent" "" "RNG"
   add "$dir" "H" "The Cliffhanger - Edward Randy (World, Ver. 3).mra" "_The Cliffhanger - Edward Randy" "" "ACT"
   add "$dir" "H" "The Real Ghostbusters (US, 2 Players, Revision 2).mra" "_The Real Ghostbusters" "" "RNG"
   add "$dir" "H" "Trio The Punch (World).mra" "_Trio The Punch" "" "ACT"
   add "$dir" "H" "Tumble Pop (World).mra" "_Tumble Pop" "" "ACT"
   add "$dir" "H" "Vapor Trail - Hyper Offence Formation (World, Rev. 1).mra" "_Vapor Trail" "" "STG"
   add "$dir" "H" "Western Express (Japan, rev 4).mra" "_Express Raider" "" "RNG"

   dot
fi
