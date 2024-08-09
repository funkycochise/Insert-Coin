#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Metal Slug - Super Vehicle-001.mgl")
if [ "$res" == "1" ]; then
   dir="_Neo-geo"
   outdir=$1

   #add "$dir" "H" "Columns.mra" 
   #add "$dir" "H" "Frog Feast.mra" 
   #add "$dir" "H" "NeoTRIS (free beta version).mra" 
   #add "$dir" "H" "Quiz Daisousa Sen - The Last Count Down.mra" 
   #add "$dir" "H" "Tetris.mra" 
   #add "$dir" "H" "NeoTRIS (free beta version).mra" 
   #add "$dir" "H"  "Neo Fight.mra" 
   #add "$dir" "H"  "Neo Thunder.mra" 

   add "$dir" "H"  "2020 Super Baseball.mgl" "" "" "SPO"
   add "$dir" "H"  "3 Count Bout.mgl" "" "" "SPO"
   add "$dir" "H"  "Aero Fighters 2.mgl" "" "" "STG"
   add "$dir" "H"  "Aero Fighters 3.mgl" "" "" "STG"
   add "$dir" "H"  "Aggressors of Dark Kombat.mgl" "" "" "VSF"
   add "$dir" "H"  "Alpha Mission II.mgl" "" "" "STG"
   add "$dir" "H"  "Andro Dunos.mgl" "" "" "STG"
   add "$dir" "H"  "Art of Fighting.mgl" "" "" "VSF"
   add "$dir" "H"  "Art of Fighting 2.mgl" "" "" "VSF"
   add "$dir" "H"  "Art of Fighting 3.mgl" "" "" "VSF"
   add "$dir" "H"  "Bakatonosama Mahjong Manyuuki.mgl"  
   add "$dir" "H"  "Bang Bang Busters (2010 NCI release).mgl" "_Bang Bang Busters" "" "ACT"
   #add "$dir" "H"  "Bang Bang Busters.mgl" "_Bang Bang Busters" "" "ACT"
   add "$dir" "H"  "Bang Bead.mgl" "" "" "SPO"
   add "$dir" "H"  "Baseball Stars 2.mgl" "" "" "SPO"
   add "$dir" "H"  "Baseball Stars Professional.mgl" "" "" "SPO"
   add "$dir" "H"  "Battle Flip Shot.mgl" "" "" "SPO"
   add "$dir" "H"  "Blazing Star.mgl" "" "" "STG"
   add "$dir" "H"  "Blue's Journey.mgl" "" "" "ACT"
   add "$dir" "H"  "Breakers.mgl" "" "" "VSF"
   add "$dir" "H"  "Breakers Revenge.mgl" "" "" "VSF"
   add "$dir" "H"  "Burning Fight.mgl" "" "" "BEA"
   add "$dir" "H"  "Cabal.mgl" "" "" "ACT"
   add "$dir" "H"  "Captain Tomaday.mgl" "" "" "STG"
   add "$dir" "H"  "Choutetsu Brikin'ger - Iron Clad.mgl"
   add "$dir" "H"  "Crossed Swords.mgl" "" "" "ACT"
   add "$dir" "H"  "Crossed Swords 2.mgl" "" "" "ACT"
   add "$dir" "H"  "Cyber-Lip.mgl" "" "" "ACT"
   add "$dir" "H"  "Digger Man (prototype).mgl" "" "" "PUZ"
   add "$dir" "H"  "Double Dragon (Neo-Geo).mgl" "" "" "VSF"
   add "$dir" "H"  "Dragon's Heaven (development board).mgl" 
   add "$dir" "H"  "Eight Man.mgl" "" "" "BEA"
   add "$dir" "H"  "Far East of Eden - Kabuki Klash.mgl" "" "" "VSF"
   add "$dir" "H"  "Fatal Fury - King of Fighters.mgl" "" "" "VSF"
   add "$dir" "H"  "Fatal Fury 2.mgl" "" "" "VSF"
   add "$dir" "H"  "Fatal Fury 3.mgl" "" "" "VSF"
   add "$dir" "H"  "Fatal Fury Special.mgl" "" "" "VSF"
   add "$dir" "H"  "Fight Fever.mgl" "" "" "VSF"
   add "$dir" "H"  "Football Frenzy.mgl" "" "" "SPO"
   add "$dir" "H"  "Galaxy Fight - Universal Warriors.mgl" "" "" "VSF"
   add "$dir" "H"  "Ganryu.mgl" "" "" "BEA"
   add "$dir" "H"  "Garou - Mark of the Wolves.mgl" "" "" "VSF"
   add "$dir" "H"  "Ghost Pilots.mgl" "" "" "STG"
   add "$dir" "H"  "Ghostlop.mgl" "" "" "PUZ"
   add "$dir" "H"  "Goal! Goal! Goal!.mgl" "" "" "SPO"
   add "$dir" "H"  "Gururin.mgl" "" "" "PUZ"
   add "$dir" "H"  "Idol Mahjong Final Romance 2.mgl" 
   add "$dir" "H"  "Ironclad.mgl" "" "" "STG"
   add "$dir" "H"  "Janshin Densetsu - Quest of Jongmaster.mgl" 
   add "$dir" "H"  "Karnov's Revenge.mgl" "" "" "VSF"
   add "$dir" "H"  "King of the Monsters.mgl" "" "" "BEA"
   add "$dir" "H"  "King of the Monsters 2 - The Next Thing.mgl" "" "" "BEA"
   add "$dir" "H"  "Kizuna Encounter - Super Tag Battle.mgl" "" "" "VSF"
   add "$dir" "H"  "Last Hope.mgl" "" "" "STG"
   add "$dir" "H"  "Last Resort.mgl" "" "" "STG"
   add "$dir" "H"  "League Bowling.mgl" "" "" "SPO"
   add "$dir" "H"  "Legend of Success Joe.mgl" "" "" "BEA"
   add "$dir" "H"  "Magical Drop II.mgl" "" "" "PUZ"
   add "$dir" "H"  "Magical Drop III.mgl" "" "" "PUZ"
   add "$dir" "H"  "Magician Lord.mgl" "" "" "ACT"
   add "$dir" "H"  "Matrimelee.mgl" "" "" "VSF"
   add "$dir" "H"  "Metal Slug - Super Vehicle-001.mgl" "_Metal Slug" "" "ACT"
   add "$dir" "H"  "Metal Slug 2 - Super Vehicle-001-II.mgl" "_Metal Slug 2" "" "ACT"
   add "$dir" "H"  "Metal Slug 2 Turbo.mgl" "_Metal Slug 2" "" "ACT"
   add "$dir" "H"  "Metal Slug 3.mgl" "_Metal Slug 3" "" "ACT"
   add "$dir" "H"  "Metal Slug 4.mgl" "_Metal Slug 4" "" "ACT"
   add "$dir" "H"  "Metal Slug 5.mgl" "_Metal Slug 5" "" "ACT"
   add "$dir" "H"  "Metal Slug X - Super Vehicle-001.mgl" "_Metal Slug X" "" "ACT"
   add "$dir" "H"  "Minasan no Okagesamadesu! Dai Sugoroku Taikai.mgl" 
   add "$dir" "H"  "Money Puzzle Exchanger - Money Idol Exchanger.mgl" "" "" "PUZ"
   add "$dir" "H"  "Mutation Nation.mgl" "" "" "BEA"
   add "$dir" "H"  "NAM-1975.mgl" "" "" "ACT"
   add "$dir" "H"  "Neo Bomberman.mgl" "" "" "ACT"
   add "$dir" "H"  "Neo Drift Out - New Technology.mgl" "" "" "SPO"
   add "$dir" "H"  "Neo Mr. Do!.mgl" "" "" "PUZ"
   add "$dir" "H"  "Neo Turf Masters.mgl" "" "" "SPO"
   add "$dir" "H"  "Neo-Geo Cup '98 - The Road to the Victory.mgl" "" "" "SPO"
   add "$dir" "H"  "Nightmare in the Dark.mgl" "" "" "ACT"
   add "$dir" "H"  "Ninja Combat.mgl" "" "" "ACT"
   add "$dir" "H"  "Ninja Commando.mgl" "" "" "STG"
   add "$dir" "H"  "Ninja Master's - Haoh-ninpo-cho.mgl" "" "" "VSF"
   add "$dir" "H"  "Over Top.mgl" "" "" "SPO"
   add "$dir" "H"  "Pae Wang Jeon Seol.mgl" "" "" "VSF"
   add "$dir" "H"  "Panic Bomber.mgl" "" "" "ACT"
   add "$dir" "H"  "Pleasure Goal.mgl" "" "" "SPO"
   add "$dir" "H"  "Pochi and Nyaa.mgl" "" "" "PUZ"
   add "$dir" "H"  "Pop 'n Bounce - Gapporin.mgl" "" "" "PUZ"
   add "$dir" "H"  "Power Spikes II.mgl" "" "" "SPO"
   add "$dir" "H"  "Prehistoric Isle 2.mgl" "" "" "STG"
   add "$dir" "H"  "Pulstar.mgl" "" "" "STG"
   add "$dir" "H"  "Puzzle Bobble.mgl"  "" "" "PUZ"
   add "$dir" "H"  "Puzzle Bobble 2.mgl" ""  "" "PUZ"
   add "$dir" "H"  "Puzzle De Pon!.mgl" "" "" "PUZ"
   add "$dir" "H"  "Puzzle De Pon! R!.mgl" "" "" "PUZ"
   add "$dir" "H"  "Puzzled.mgl" "" "" "PUZ"
   add "$dir" "H"  "Quiz Daisousa Sen - The Last Count Down.mgl" 
   add "$dir" "H"  "Quiz King of Fighters.mgl" 
   add "$dir" "H"  "Quiz Meitantei Neo & Geo - Quiz Daisousa Sen part 2.mgl" 
   add "$dir" "H"  "Rage of the Dragons.mgl" "" "" "VSF"
   add "$dir" "H"  "Ragnagard.mgl" "" "" "VSF"
   add "$dir" "H"  "Real Bout Fatal Fury.mgl" "" "" "VSF"
   add "$dir" "H"  "Real Bout Fatal Fury 2.mgl" "" "" "VSF"
   add "$dir" "H"  "Real Bout Fatal Fury Special.mgl" "" "" "VSF"
   add "$dir" "H"  "Riding Hero.mgl" "" "" "SPO"
   add "$dir" "H"  "Robo Army.mgl" "" "" "BEA"
   add "$dir" "H"  "Samurai Shodown.mgl" "" "" "VSF"
   add "$dir" "H"  "Samurai Shodown II.mgl" "" "" "VSF"
   add "$dir" "H"  "Samurai Shodown III.mgl" "" "" "VSF"
   add "$dir" "H"  "Samurai Shodown IV.mgl" "" "" "VSF"
   add "$dir" "H"  "Samurai Shodown V.mgl" "" "" "VSF"
   add "$dir" "H"  "Samurai Shodown V Perfect.mgl" "" "" "VSF"
   add "$dir" "H"  "Samurai Shodown V Special.mgl" "" "" "VSF"
   add "$dir" "H"  "Savage Reign.mgl" "" "" "VSF"
   add "$dir" "H"  "Sengoku.mgl" "" "" "BEA"
   add "$dir" "H"  "Sengoku 2.mgl" "" "" "BEA"
   add "$dir" "H"  "Sengoku 3.mgl" "" "" "BEA"
   add "$dir" "H"  "Shock Troopers.mgl" "" "" "STG"
   add "$dir" "H"  "Shock Troopers - 2nd Squad.mgl" "" "" "STG"
   add "$dir" "H"  "Shougi no Tatsujin - Master of Shougi.mgl"
   add "$dir" "H"  "SNK vs. Capcom - SVC Chaos.mgl" "" "" "VSF"
   add "$dir" "H"  "Soccer Brawl.mgl" "" "" "SPO"
   add "$dir" "H"  "Spin Master.mgl" "" "" "ACT"
   add "$dir" "H"  "Stakes Winner.mgl" "" "" "SPO"
   add "$dir" "H"  "Stakes Winner 2.mgl" "" "" "SPO"
   add "$dir" "H"  "Street Hoop.mgl" "" "" "SPO"
   add "$dir" "H"  "Strikers 1945 Plus.mgl" "" "" "STG"
   add "$dir" "H"  "Super Bubble Pop.mgl" "" ""  "PUZ"
   add "$dir" "H"  "Super Dodge Ball.mgl" "" "" "SPO"
   add "$dir" "H"  "Super Sidekicks.mgl" "" "" "SPO"
   add "$dir" "H"  "Super Sidekicks 2.mgl" "" "" "SPO"
   add "$dir" "H"  "Super Sidekicks 3.mgl" "" "" "SPO"
   add "$dir" "H"  "Tecmo World Soccer '96.mgl" "" "" "SPO"
   add "$dir" "H"  "The Eye of Typhoon - Tsunami Edition.mgl" 
   add "$dir" "H"  "The Irritating Maze.mgl" 
   add "$dir" "H"  "The King of Fighters '94.mgl" "" "" "VSF"
   add "$dir" "H"  "The King of Fighters '95.mgl" "" "" "VSF"
   add "$dir" "H"  "The King of Fighters '96.mgl" "" "" "VSF"
   add "$dir" "H"  "The King of Fighters '97.mgl" "" "" "VSF"
   add "$dir" "H"  "The King of Fighters '98.mgl" "" "" "VSF"
   add "$dir" "H"  "The King of Fighters '99.mgl" "" "" "VSF"
   add "$dir" "H"  "The King of Fighters 2000.mgl" "" "" "VSF"
   add "$dir" "H"  "The King of Fighters 2001.mgl" "" "" "VSF"
   add "$dir" "H"  "The King of Fighters 2002.mgl" "" "" "VSF"
   add "$dir" "H"  "The King of Fighters 2003.mgl" "" "" "VSF"
   add "$dir" "H"  "The Last Blade.mgl" "" "" "" "VSF"
   add "$dir" "H"  "The Last Blade 2.mgl" "" "" "VSF"
   add "$dir" "H"  "The Super Spy.mgl" "" "" "ACT"
   add "$dir" "H"  "The Ultimate 11.mgl" "" "" "SPO"
   add "$dir" "H"  "Thrash Rally.mgl" "" "" "SPO"
   add "$dir" "H"  "Top Hunter - Roddy & Cathy.mgl" "" "" "ACT"
   add "$dir" "H"  "Top Player's Golf.mgl" "" "" "SPO"
   add "$dir" "H"  "Treasure of the Caribbean.mgl" "" "" "PUZ"
   add "$dir" "H"  "Twinkle Star Sprites.mgl" "" "" "STG"
   add "$dir" "H"  "Viewpoint.mgl" "" "" "STG"
   add "$dir" "H"  "Voltage Fighter - Gowcaizer.mgl" "" "" "VSF"
   add "$dir" "H"  "Waku Waku 7.mgl" "" "" "VSF"
   add "$dir" "H"  "Windjammers.mgl" "" "" "SPO"
   add "$dir" "H"  "World Heroes.mgl" "" "" "VSF"
   add "$dir" "H"  "World Heroes 2.mgl" "" "" "VSF"
   add "$dir" "H"  "World Heroes 2 Jet.mgl" "" "" "VSF"
   add "$dir" "H"  "World Heroes Perfect.mgl" "" "" "VSF"
   add "$dir" "H"  "Xeno Crisis.mgl" "" "" "ACT"
   add "$dir" "H"  "Zed Blade.mgl" "" "" "STG"
   add "$dir" "H"  "Zintrick.mgl" "" "" "PUZ"
   add "$dir" "H"  "Zupapa!.mgl" "" "" "ACT"

   dot
fi
