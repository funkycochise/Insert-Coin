#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Combat School (joystick).mra")
if [ "$res" == "1" ]; then
   dir="_#Essentials"
   outdir=$1
   add "$dir" "V"  "Amidar (Scramble).mra" "_Amidar" "" "PUZ"
   add "$dir" "V"  "Amidar (Scramble).mra" "_Amidar" "" "PUZ"
   add "$dir" "V"  "Ajax.mra" "_Ajax" "" "STG"
   add "$dir" "V"  "Circus Charlie (level select, set 1).mra" "_Circus Charlie" "" "ACT"
   add "$dir" "V"  "Contra (US - Asia, set 1).mra" "_Contra" "" "RNG"
   add "$dir" "V"  "Frogger (Konami Bugfixed).mra" "_Frogger" "" "ACT"
   add "$dir" "V"  "Frogger (Sega, Set 2).mra" "_Frogger" "" "ACT"
   add "$dir" "V"  "Gyruss.mra" "_Gyruss" "" "STG"
   add "$dir" "V"  "Jackal (W) [bl].mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "Jackal (W).mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "Jackal (W, Rotary).mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "Kicker.mra" "_Kicker" "" "ACT"
   add "$dir" "V"  "Mikie.mra" "_Mikie" "" "ACT"
   add "$dir" "V"  "Scramble (Stern, Set 1).mra" "_Scramble" "" "STG"
   add "$dir" "V"  "Super Basketball (version I, encrypted).mra" "_Super Basketball" "" "SPO"
   add "$dir" "V"  "Super Cobra.mra" "_Super Cobra" "" "STG"
   add "$dir" "V"  "Super Contra (set 1).mra" "_Super Contra" "" "RNG"

   add "$dir" "V"  "Time Pilot '84 (Set 1).mra" "_Time Pilot 84" "" "STG"
   add "$dir" "V"  "Time Pilot '84 (Set 2).mra" "_Time Pilot 84" "" "STG"
   add "$dir" "V"  "Time Pilot '84 (Set 3).mra" "_Time Pilot 84" "" "STG"
   add "$dir" "V"  "Time Pilot.mra" "_Time Pilot" "" "STG"
   add "$dir" "V"  "Tokushu Butai Jackal (JP).mra" "_Jackal" "" "STG"
   add "$dir" "V"  "Top Gunner (US) [bl].mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "Top Gunner (US).mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "TwinBee (Bubble System).mra" "_TwinBee" "" "STG"

   add "$dir" "V"  "1942 (Revision B).mra" "_1942" "" "STG"
   add "$dir" "V"  "1943 Kai Midway Kaisen (Japan).mra" "_1943 The Battle of Midway" "" "STG"
   add "$dir" "V"  "1943 The Battle of Midway (Euro).mra" "_1943 The Battle of Midway" "" "STG"
   add "$dir" "V"  "1943 The Battle of Midway Mark II (US).mra" "_1943 The Battle of Midway" "" "STG"
   add "$dir" "V"  "Commando (World).mra" "_Commando" "" "RNG"
   add "$dir" "V"  "Exed Exes.mra" "_Exed Exes" "" "STG"
   add "$dir" "V"  "Gun.Smoke (World, 1985-11-15).mra" "_Gun.Smoke" "" "RNG"
   add "$dir" "V"  "Legendary Wings (US set 1).mra" "_Legendary Wings" "" "STG"
   add "$dir" "V"  "Vulgus (set 1).mra" "_Vulgus" "" "STG"

   add "$dir" "V"  "Dig Dug (Rev 2).mra" "_Dig Dug" "" "ACT"
   add "$dir" "V"  "Dig Dug II (New Ver).mra" "_Dig Dug II" "" "ACT"
   add "$dir" "V"  "Galaga (Midway, Set 1).mra" "_Galaga" "" "STG"
   add "$dir" "V"  "Galaga 3 (GP3 Rev D).mra" "_Gaplus" "" "STG"
   add "$dir" "V"  "Galaga (Midway, Set 1).mra" "_Galaga" "" "STG"
   add "$dir" "V"  "Galaxian (Namco, Set 1).mra" "_Galaxian" "" "STG"
   add "$dir" "V"  "Gaplus (GP2 Rev B).mra" "_Gaplus" "" "STG"

   add "$dir" "V"  "Mappy (US).mra" "_Mappy" "" "ACT"
   add "$dir" "V"  "Ms. Pac-Man.mra" "_Ms.Pacman" "" "ACT"
   add "$dir" "V"  "New Rally-X.mra" "_RallyX" "" "ACT"
   add "$dir" "V"  "Puck Man (JP, Set 1).mra" "_Pacman" "" "ACT"
   add "$dir" "V"  "Xevious.mra" "_Xevious" "" "STG"

   add "$dir" "V" "Galaga '88.mra" "_Galaga '88" "" "STG"
   add "$dir" "V" "Pac-Mania.mra" "_Pac-Mania" "" "ACT"

   add "$dir" "V" "Burger Time (Set 1).mra" "_Burger Time" "" "ACT"

   add "$dir" "V"  "Moon Cresta (Galaxian Hardware) [bl].mra" "_Moon Cresta" "" "STG"

   add "$dir" "V"  "Terra Cresta (YM3526 set 1).mra" "_Terra Cresta" "" "STG"

   add "$dir" "V"  "Donkey Kong (US, Set 1).mra" "_Donkey Kong" "" "ACT"
   add "$dir" "V"  "Donkey Kong 3 (US).mra" "_Donkey Kong 3" "" "ACT"
   add "$dir" "V"  "Donkey Kong Junior (US, Set F-2).mra" "_Donkey Kong Junior" "" "ACT"

   add "$dir" "V"  "Armed Police Batrider (Japan, B Version) (Fri Feb 13 1998).mra" "_Armed Police Batrider" "" "STG"
   add "$dir" "V"  "Battle Bakraid - Unlimited Version (Japan) (Tue Jun 8 1999).mra" "_Battle Bakraid" "" "STG"
   add "$dir" "V"  "Battle Garegga (Europe - USA - Japan - Asia) (Sat Feb 3 1996).mra" "_Battle Garegga" "" "STG"
   add "$dir" "V"  "Shippu Mahou Daisakusen (Japan).mra" "_Kingdom Grandprix" "" "STG"
   rep "$dir" "V" "_Kingdom Grandprix"  "_Kingdom Grandprix" "" "STG"
   add "$dir" "V"  "Mahou Daisakusen (Japan).mra" "_Sorcer Striker" "" "STG"
   rep "$dir" "V" "_Sorcer Striker"  "_Sorcer Striker" "" "STG"

   add "$dir" "V"  "1941 Counter Attack (World 900227).mra" "_1941 Counter Attack" "" "STG"
   add "$dir" "V"  "Mercs (World 900302).mra" "_Mercs" "" "RNG"
   add "$dir" "V"  "Varth Operation Thunderstorm (World 920714).mra" "_Varth  Operation Thunderstorm" "" "STG"

   add "$dir" "V" "19XX The War Against Destiny (Euro 960104).mra" "_19XX The War Against Destiny" "" "STG"
   add "$dir" "V" "Dimahoo (Euro 000121).mra" "_Dimahoo" "" "STG"

   add "$dir" "V" "Ikari Warriors.mra" "_Ikari Warriors" "" "RNG"
   add "$dir" "V" "Victory Road.mra" "_Victory Road" "" "RNG"

   add "$dir" "V" "Alcon Bootleg.mra" "_SlapFight" "" "STG"
   add "$dir" "V" "Arkanoid - Revenge of DOH (World).mra" "_Arkanoid II"
   add "$dir" "V" "Arkanoid (W).mra" "_Arkanoid"
   add "$dir" "V" "Kageki (World).mra" "_Kageki" "" "BEA"
   add "$dir" "V" "Kyukyoku Tiger (Japan, 2P Co-op).mra" "_Twin Cobra" "" "STG"
   add "$dir" "V" "Space Invaders Part II (Taito, Bigger ROMs).mra" "_Space Invaders Part II" "" "STG"
   add "$dir" "V" "Space Invaders.mra" "_Space Invaders" "" "STG"
   add "$dir" "V" "Tiger Heli Bootleg.mra" "_Tiger Heli" "" "STG"

   add "$dir" "V" "Xain'd Sleena (bootleg, bugfixed).mra" "_Xain'd Sleena" "" "RNG"

   add "$dir" "V" "Alcon Bootleg.mra" "_SlapFight" "" "STG"
   add "$dir" "V" "Kyukyoku Tiger (Japan, 2P Co-op).mra" "_Twin Cobra" "" "STG"
   add "$dir" "V" "Out Zone.mra" "_Out Zone" "" "RNG"
   add "$dir" "V" "Same! Same! Same! (2P Set).mra" "_Fire Shark" "" "STG"
   add "$dir" "V" "SlapFight Bootleg.mra" "_SlapFight" "" "STG"
   add "$dir" "V" "Truxton - Tatsujin.mra" "_Truxton" "" "STG"
   add "$dir" "V" "Truxton II - Tatsujin Oh.mra" "_Truxton II" "" "STG"
   add "$dir" "V" "Vimana (Japan).mra" "_Vimana" "" "STG"

   add "$dir" "V" "Bomb Jack.mra" "_Bomb Jack"
   add "$dir" "V" "Gemini Wing.mra" "_Gemini Wing" "" "STG"
   add "$dir" "V" "Pleiads (Tehkan).mra" "_Pleiads" "" "STG"
   add "$dir" "V" "Vimana (Japan).mra" "_Vimana" "" "STG"

   add "$dir" "V" "Pengo (Set 1, Rev C).mra" "_Pengo" "" "PUZ"
   add "$dir" "V" "Zaxxon (Set 1, Rev D).mra" "_Zaxxon" "" "ACT"

   add "$dir" "H"  "Aliens (World set 1).mra" "_Aliens" "" "BEA"
   add "$dir" "H"  "Combat School (joystick).mra" "_Combat School" "" "ACT"

   add "$dir" "H"  "Gradius.mra" "_Gradius" "" "STG"
   add "$dir" "H"  "Green Beret.mra" "_Green Beret" "" "RNG"

   add "$dir" "H"  "Hyper Sports.mra" "_Hyper Sports" "" "SPO"
   add "$dir" "H"  "Iron Horse (Ver. K).mra" "_Iron Horse" "" "RNG"
   add "$dir" "H"  "Jailbreak.mra" "_JailBreak" "" "RNG"
   add "$dir" "H"  "Konami's Ping-Pong.mra" "_Konami's Ping-Pong" "" "SPO"
   add "$dir" "H"  "Nemesis (ROM Version).mra" "_Nemesis" "" "STG"
   add "$dir" "H"  "Parodius Da! Shinwa kara Owarai e (World, set 1).mra" "_Parodius Da! Shinwa kara Owarai e" "" "STG"
   add "$dir" "H" "Metro-Cross (set 1).mra" "_Metro-Cross" "" "ACT"
   add "$dir" "H"  "Rush'n Attack (US).mra" "_Green Beret" "" "ACT"
   add "$dir" "H"  "Salamander (version D).mra" "_Salamander" "" "STG"
   add "$dir" "H"  "Splatter House (World, new version (SH3)).mra" "_Splatter House" "" "ACT"
   add "$dir" "H"  "Sunset Riders (4 Players ver EAC).mra" "_Sunset Riders" "" "BEA"
   add "$dir" "H"  "Teenage Mutant Ninja Turtles (World 4 Players, version X).mra" "_Teenage Mutant Ninja Turtles" "" "BEA"
   add "$dir" "H"  "Teenage Mutant Ninja Turtles - Turtles in Time (4 Players ver UAA).mra" "_Teenage Mutant Ninja Turtles - Turtles in Time" "" "BEA"
   add "$dir" "H"  "The Simpsons (4 Players World, set 1).mra" "_The Simpsons" "" "BEA"

   add "$dir" "H"  "Track & Field.mra" "_Track & Field" "" "SPO"

   add "$dir" "H"  "Yie Ar Kung-Fu (program code I).mra" "_Yie Ar Kung-Fu" "" "ACT"

   add "$dir" "H"  "Bionic Commando (Euro).mra" "_Bionic Commando" "" "ACT"
   add "$dir" "H"  "Black Tiger.mra" "_Black Tiger" "" "ACT"

   add "$dir" "H"  "Ghosts'n Goblins (World Set 1).mra" "_Ghosts'n Goblins" "" "ACT"
   add "$dir" "H"  "Pang (World).mra" "_Pang" "" "ACT"
   add "$dir" "H"  "Side Arms - Hyper Dyne (World, 861129).mra" "_Side Arms" "" "STG"
   add "$dir" "H"  "Super Pang (World 900914).mra" "_Super Pang" "" "ACT"
   add "$dir" "H"  "Tiger Road (US).mra" "_Tiger Road" "" "ACT"
   add "$dir" "H"  "Trojan (US set 1).mra" "_Trojan" "" "RNG"

   add "$dir" "H" "Liquid Kids (World).mra" "_Liquid Kids" "" "ACT"

   add "$dir" "H" "Splatter House (World, new version (SH3)).mra" "_Splatter House" "" "ACT"
   add "$dir" "H" "Rolling Thunder (rev 3).mra" "_Rolling Thunder" "" "ACT"

   add "$dir" "H" "Bad Dudes vs. Dragonninja (US, revision 1).mra" "_Bad Dudes vs. Dragonninja" "" "ACT"
   add "$dir" "H" "Chelnov - Atomic Runner (World).mra" "_Chelnov" "" "ACT"
   add "$dir" "H" "Karnov (US, rev 6).mra" "_Karnov" "" "RNG"
   add "$dir" "H" "Midnight Resistance (World, set 1).mra" "_Midnight Resistance" "" "RNG"
   add "$dir" "H" "Robocop (World, revision 4).mra" "_Robocop" "" "RNG"
   add "$dir" "H" "Secret Agent (World, revision 3).mra" "_Secret Agent" "" "RNG"
   add "$dir" "H" "Express Raider.mra" "_Express Raider" "" "RNG"

   add "$dir" "H" "Moon Patrol.mra" "_Moon Patrol" "" "ACT"
   add "$dir" "H" "Vigilante (World, Rev E).mra" "_Vigilante" "" "ACT"

   add "$dir" "H" "Kung-Fu Master (W).mra" "_Kung-Fu Master" "" "ACT"

   add "$dir" "H" "Daiku no Gensan (Japan, M72 hardware).mra" "_Hammerin' Harry" "" "ACT"

   add "$dir" "H" "Dragon Breed (Japan, M72 hardware).mra" "_Dragon Breed" "" "STG"
   add "$dir" "H" "Gallop - Armed Police Unit (Japan, M72 hardware).mra" "_Gallop" "" "STG"
   add "$dir" "H" "Hammerin' Harry (US, M84 hardware).mra" "_Hammerin' Harry" "" "ACT"
   add "$dir" "H" "Legend of Hero Tonma (Japan).mra" "_Legend of Hero Tonma"
   add "$dir" "H" "Mr. HELI no Daibouken (Japan).mra" "_Mr. HELI no Daibouken" "" "STG"
   add "$dir" "H" "Ninja Spirit (Japan).mra" "_Ninja Spirit" "" "ACT"
   add "$dir" "H" "R-Type (World).mra" "_R-Type" "" "STG"
   add "$dir" "H" "R-Type II (World).mra" "_R-Type II" "" "STG"

   add "$dir" "H" "Gun Force II (US).mra" "_Gun Force II" "" "RNG"
   add "$dir" "H" "Gunforce - Battle Fire Engulfed Terror Island (World).mra" "_Gunforce - Battle Fire Engulfed Terror Island" "" "RNG"
   add "$dir" "H" "Hook (World).mra" "_Hook" "" "BEA"
   add "$dir" "H" "In The Hunt (World).mra" "_In The Hunt" "" "STG"
   add "$dir" "H" "Mystic Riders (World).mra" "_Mystic Riders" "" "STG"
   add "$dir" "H" "Ninja Baseball Bat Man (World).mra" "_Ninja Baseball Bat Man" "" "BEA"
   add "$dir" "H" "R-Type Leo (World).mra" "_R-Type Leo" "" "STG"
   add "$dir" "H" "Undercover Cops (World).mra" "_Undercover Cops" "" "BEA"

   add "$dir" "H" "P-47 - The Freedom Fighter (Japan).mra" "_P-47 - The Freedom Fighter" "" "STG"
   add "$dir" "H" "Rod-Land (World, set 1).mra" "_Rod-Land" "" "ACT"
   add "$dir" "H" "Saint Dragon (Set 1).mra" "_Saint Dragon" "" "STG"

   add "$dir" "H" "Shadow Warriors (World, set 1).mra" "_Shadow Warriors" "" "BEA"
   add "$dir" "H" "The Final Round (version M).mra" "_The Final Round" "" "SPO"
   add "$dir" "H" "Vulcan Venture (New).mra" "_Vulcan Venture" "" "STG"

   add "$dir" "H"  "Popeye (Rev D).mra" "_Popeye" "" "ACT"

   add "$dir" "H"  "Captain Commando (World 911202).mra" "_Captain Commando" "" "BEA"
   add "$dir" "H"  "Carrier Air Wing (World 901012).mra" "_Carrier Air Wing" "" "STG"
   add "$dir" "H"  "Ghouls'n Ghosts (World).mra" "_Ghouls'n Ghosts" "" "ACT"
   add "$dir" "H"  "Final Fight (World, set 1).mra" "_Final Fight" "" "BEA"
   add "$dir" "H"  "Mega Twins (World 900619).mra" "_Mega Twins" "" "RNG"
   add "$dir" "H"  "Nemo (World 901130).mra" "_Nemo" "" "RNG"
   add "$dir" "H"  "Pang! 3 (Euro 950601).mra" "_Pang! 3" "" "ACT"
   add "$dir" "H"  "Pnickies (Japan 940608).mra" "_Pnickies"
   add "$dir" "H"  "Street Fighter II' Champion Edition (World 920513).mra" "_Street Fighter II' Champion Edition" "" "VSF"
   add "$dir" "H"  "Street Fighter II' Hyper Fighting (World 921209).mra" "_Street Fighter II' Hyper Fighting" "" "VSF"
   add "$dir" "H"  "Street Fighter II The World Warrior (World 910522).mra" "_Street Fighter II The World Warrior" "" "VSF"
   add "$dir" "H"  "Street Fighter Zero (CPS Changer, Japan 951020).mra" "_Street Fighter Zero -CPS Changer" "" "VSF"
   add "$dir" "H"  "Strider (USA, B-Board 89624B-2).mra" "_Strider" "" "RNG"
   add "$dir" "H"  "Three Wonders (World 910520).mra" "_Three Wonders" "" "STG"
   add "$dir" "H"  "U.N. Squadron (USA).mra" "_U.N. Squadron" "" "STG"
   add "$dir" "H"  "Willow (World).mra" "_Willow" "" "RNG"

   add "$dir" "H"  "Cadillacs and Dinosaurs (World 930201).mra" "_Cadillacs and Dinosaurs" "" "BEA"
   add "$dir" "H"  "The Punisher (World 930422).mra" "_The Punisher" "" "BEA"

   add "$dir" "H" "1944 The Loop Master (Euro 000620).mra" "_1944 The Loop Master" "" "STG"
   add "$dir" "H" "Alien vs. Predator (Euro 940520).mra" "_Alien vs. Predator" "" "BEA"
   add "$dir" "H" "Hyper Street Fighter II The Anniversary Edition (USA 040202).mra" "_Hyper Street Fighter II The Anniversary Edition" "" "VSF"
   add "$dir" "H" "Mighty! Pang (Euro 001010).mra" "_Mighty! Pang" "" "ACT"
   add "$dir" "H" "Progear (USA 010117).mra" "_Progear" "" "STG"
   add "$dir" "H" "Puzz Loop 2 (Euro 010302).mra" "_Puzz Loop 2" "" "PUZ"
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

   add "$dir" "H" "Athena.mra" "_Athena"
   add "$dir" "H" "Prehistoric Isle in 1930 (World).mra" "_Prehistoric Isle in 1930" "" "STG"
   add "$dir" "H" "P.O.W. - Prisoners of War (US Version 1).mra" "_P.O.W. - Prisoners of War" "" "BEA"

   add "$dir" "H" "Toki (World, set 1).mra" "_Toki" "" "ACT"

   add "$dir" "H" "Bubble Bobble (Japan, Ver 0.1).mra" "_Bubble Bobble" "" "ACT"
   add "$dir" "H" "Chuka Taisen (World) (P0-028-A PCB).mra" "_Chuka Taisen" "" "STG"
   add "$dir" "H" "Insector X (World).mra" "_Insector X" "" "STG"
   add "$dir" "H" "Rastan (World Rev 1).mra" "_Rastan" "" "ACT"
   add "$dir" "H" "The NewZealand Story (World, new version) (P0-043A PCB).mra" "_The NewZealand Story" "" "ACT"

   add "$dir" "H" "Elevator Action Bootleg.mra" "_Elevator Action" "" "ACT"
   add "$dir" "H" "Jungle King.mra" "_Jungle King"


   add "$dir" "H" "Double Dragon (Japan).mra" "_Double Dragon" "" "BEA"
   add "$dir" "H" "Double Dragon II The Revenge (World).mra" "_Double Dragon II The Revenge" "" "BEA"
   add "$dir" "H" "V'Ball (US).mra" "_V'Ball" "" "SPO"
   add "$dir" "H" "Renegade (US).mra" "_Renegade" "" "BEA"

   add "$dir" "H" "The Combatribes (US, Rev 2, Set 1).mra" "_The Combatribes" "" "BEA"

   add "$dir" "H"  "Pac-Land (World).mra" "_Pac-Land" "" "ACT"

   add "$dir" "H" "Rygar.mra" "_Rygar" "" "ACT"
   add "$dir" "H" "Shadow Warriors (World, set 1).mra" "_Shadow Warriors" "" "BEA"
   add "$dir" "H" "Silkworm.mra" "_Silkworm" "" "STG"
   add "$dir" "H" "Solomon's Key.mra" "_Solomons Key" "" "PUZ"

   add "$dir" "H" "Demon's World - Horror Story (Set 3).mra" "_Demon's World" "" "RNG"
   add "$dir" "H" "Hellfire (2P set).mra" "_Hellfire" "" "STG"
   add "$dir" "H" "Pipi & Bibis - Whoopee!! (Z80 sound cpu, set 1).mra" "_Pipi & Bibis" "" "ACT"
   add "$dir" "H" "Snow Bros. 2 - With New Elves - Otenki Paradise (Hanafram).mra" "_Snow Bros. 2"
   add "$dir" "H" "Zero Wing (2P set).mra" "_Zero Wing" "" "STG"

   add "$dir" "H" "Penguin-Kun_Wars.mra" "_Penguin-Kun Wars" "" "ACT"

   add "$dir" "H" "Alien Syndrome (set 4, System 16B, unprotected).mra" "_Alien Syndrome" "" "ACT"
   add "$dir" "H" "Altered Beast (set 8) (8751 317-0078).mra" "_Altered Beast" "" "BEA"
   add "$dir" "H" "Cotton (set 4, World) (FD1094 317-0181a).mra" "_Cotton" "" "STG"
   add "$dir" "H" "E-Swat - Cyber Police (set 4, World) (FD1094 317-0130).mra" "_E-Swat" "" "ACT"
   add "$dir" "H" "Fantasy Zone (Rev A, World, S16A) [No Protection].mra" "_Fantasy Zone" "" "STG"
   add "$dir" "H" "Fantasy Zone II - The Tears of Opa-Opa (System 16C version).mra" "_Fantasy Zone II" "" "STG"
   add "$dir" "H" "Golden Axe (set 6, US) (8751 317-123A).mra" "_Golden Axe" "" "BEA"

   add "$dir" "H" "Quartet 2 (World, S16A) [No Protection].mra" "_Quartet" "" "ACT"
   add "$dir" "H" "Shinobi (Set 6, World, S16A) [No Protection].mra" "_Shinobi" "" "ACT"
   add "$dir" "H" "Wonder Boy III - Monster Lair (set 6, World, System 16B) (8751 317-0098).mra" "_Wonder Boy III" "" "ACT"
   rep "$dir" "H" "_Sega Tetris"  "_Tetris" "" "PUZ"


   add "$dir" "H" "Alien Storm (World, 2 Players) (FD1094 317-0154).mra" "_Alien Storm" "" "BEA"
   add "$dir" "H" "D. D. Crew (World, 3 Players) (FD1094 317-0190).mra" "_D. D. Crew" "" "BEA"
   add "$dir" "H" "Michael Jackson's Moonwalker (World) (FD1094-8751 317-0159).mra" "_Michael Jackson's Moonwalker" "" "ACT"
   add "$dir" "H" "Shadow Dancer (World).mra" "_Shadow Dancer" "" "ACT"

   add "$dir" "H" "Flicky (128k Version, 315-5051).mra" "_Flicky"
   add "$dir" "H" "Sega Ninja (315-5102).mra" "_Sega Ninja" "" "RNG"
   add "$dir" "H" "Wonder Boy (Set 1, 315-5177).mra" "_Wonder Boy" "" "ACT"
   add "$dir" "H" "Wonder Boy (System 2, Set 1, Japan) [315-5177].mra" "_Wonder Boy" "" "ACT"
   add "$dir" "H" "Wonder Boy in Monster Land (Japan New Ver., MC-8123, 317-0043).mra" "_Wonder Boy in Monster Land" "" "ACT"

   add "$dir" "H" "Super Hang-On (sitdown-upright) (unprotected).mra" "_Super Hang-On"
   add "$dir" "H" "Out Run (sitdown-upright, Rev B).mra" "_Out Run"
   add "$dir" "H" "Turbo Out Run (Out Run upgrade) (FD1094 317-0118).mra" "_Turbo Out Run"

   add "$dir" "H"  "Aero Fighters 2.mgl" "" "" "STG"
   add "$dir" "H"  "Aero Fighters 3.mgl" "" "" "STG"
   add "$dir" "H"  "Magical Drop II.mgl" "" "" "PUZ"
   add "$dir" "H"  "Magical Drop III.mgl" "" "" "PUZ"
   add "$dir" "H"  "Metal Slug - Super Vehicle-001.mgl" "_Metal Slug" "_Metal Slug" "RNG"
   add "$dir" "H"  "Metal Slug 2 - Super Vehicle-001-II.mgl" "_Metal Slug_2" "_Metal Slug 2" "RNG"
   add "$dir" "H"  "Metal Slug 2 Turbo.mgl" "_Metal Slug_2" "_Metal Slug 2" "RNG"
   add "$dir" "H"  "Metal Slug 3.mgl" "_Metal Slug 3" "_Metal Slug 3" "RNG"
   add "$dir" "H"  "Metal Slug 4.mgl" "_Metal Slug 4" "_Metal Slug 4" "RNG"
   add "$dir" "H"  "Metal Slug 5.mgl" "_Metal Slug 5" "_Metal Slug 5" "RNG"
   add "$dir" "H"  "Metal Slug X - Super Vehicle-001.mgl" "_Metal Slug X" "_Metal Slug X" "RNG"
   add "$dir" "H"  "NAM-1975.mgl" "" "" "ACT"
   add "$dir" "H"  "Puzzle Bobble - Bust-A-Move.mgl"  "" "" "PUZ"
   add "$dir" "H"  "Puzzle Bobble 2 - Bust-A-Move Again.mgl" ""  "" "PUZ"
   add "$dir" "H"  "Spin Master - Miracle Adventure.mgl" "" "" "ACT"
   add "$dir" "H"  "Strikers 1945 Plus.mgl" "" "" "STG"
   add "$dir" "H"  "Windjammers.mgl" "" "" "SPO"
   add "$dir" "H"  "Zupapa!.mgl" "" "" "ACT"

   dot
fi
