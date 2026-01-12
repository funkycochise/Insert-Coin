#!/bin/bash  
source ./folders/functions.sh

outdir=$1
loadsetup

if [ -f "$names" ]; then
   source <(grep newest $names)
else
   newest="_#Recent"
fi
dir=$newest

mkdir "$outdir/$dir"

function linkfolder {

   #echo "1: $1"
   #echo "2: $2"
   #echo "3: $3"

   counter=$((counter+1))
   if [[ "$counter" -lt 100 ]]; then
      #echo "$counter - $1"
      formated=$(printf "%02d" $counter)

      if (! [ -z "$2" ]);then
         ln -s "$ALT/$1"  "$outdir/$dir/_$formated$2"
      else
         ln -s "$ALT/$1"  "$outdir/$dir/_$formated$1"
      fi
   fi
}


function add {

if ([ -z "$1" ]); 
then 
   linkfolder "$2"
else
   if  test -f "$ARCADE/$1" ; then
      linkfolder "$2" "$3"
   fi
fi

}

function additem {

   #echo "outdir: $outdir"
   #echo "dir: $dir"
   #echo "1: $1"

   counter=$((counter+1))
   if [[ "$counter" -lt 100 ]]; then
      #echo "$counter - $1"
      formated=$(printf "%02d" $counter)

      #echo "formated: _$formated$1"
      #echo "location: $outdir/$1"
      if [ -d "$outdir/$1" ]; then
         ln -s "$outdir/$1" "$outdir/$dir/_$formated$1"
      fi
   fi
}


counter=0

#0102
   add "Premier Soccer (ver EAB).mra" "_Premier Soccer"

#1227
   add "Snow Bros. - Nick & Tom (Japan).mra" "_Snow Bros. - Nick & Tom"

if [ -f "$names" ]; then
   source <(grep vs $names)
else
   vs="_Nintendo Vs."
fi

   additem "$vs"

#1112
   add "Kyukyoku Tiger (Japan, 2P Co-op).mra" "_Twin Cobra"

#0711
   add "Bang Bang Busters 2 (demo).mgl" "_Bang Bang Busters 2"
   add "Run and Gun (ver EAA 1993 10.8).mra" "_Run and Gun"

#3110
   add "D. D. Crew (World, 3 Players) (FD1094 317-0190).mra" "_D. D. Crew"
   add "Hammer Away (Japan, prototype).mra" "_Hammer Away"

#2510
   add "Clockwork Aquario (prototype).mra" "_Clockwork Aquario"
   add "Wally wo Sagase! (rev B, Japan, 2 players) (FD1094 317-0197B).mra" "_Wally wo Sagase!"

#1010
   add "Teenage Mutant Ninja Turtles - Turtles in Time (4 Players ver UAA).mra" "_Teenage Mutant Ninja Turtles 2" "_TMNT2 (Jotego)"

#0912
   add "Golfing Greats (World, version L).mra" "_Golfing Greats"

#0911
   add "Dead Connection (World).mra" "_Dead Connection"
   add "Metal Black (World).mra" "_Metal Black"
   add "Thunder Fox (World, rev 1).mra" "_Thunder Fox" 

#0829
   add "Surprise Attack (World ver. K).mra" "_Surprise Attack"

#0805
add "Akuu Gallet (Japan).mra" "_Air Gallet"

#0730
add "StarForce.mra" "_StarForce"
add "Baluba-louk no Densetsu (Japan).mra" "_Baluba-louk no Densetsu"

#0704
add "Ajax.mra" "_Ajax"

#2706
add "Lightning Fighters (World).mra" "_Lightning Fighters"

#2506
add "Bishoujo Senshi Sailor Moon (Version 95-03-22B, Japan).mra" "_Pretty Soldier Sailor Moon"

#2006
add "Desert Breaker (World) (FD1094 317-0196).mra" "_Desert Breaker"
add "Thunder Fox (World, rev 1).mra" "_Thunder Fox"

#1306
add "Laser Ghost (World) (FD1094 317-0166).mra" "_Laser Ghost"

#0606
add "Alien Sector.mra" "_Alien Sector" "" "RNG"
add "Metro-Cross (set 1).mra" "_Metro-Cross" "" "ACT"

#3105
add "Genpei ToumaDen.mra" "_Genpei ToumaDen"
add "The Return of Ishtar.mra" "_The Return of Ishtar"

#2805
add "Gun & Frontier (World).mra" "_Gun Frontier"
add "Super Space Invaders '91 (World, revised code, Rev 1).mra" "_Super Space Invaders '91"
add "Cameltry (World, YM2610).mra" "_Cameltry"
add "Dino Rex (World).mra" "_Dino Rex"
add "Don Doko Don (World, rev 1).mra" "_Don Doko Don"
add "Final Blow (World).mra" "_Final Blow"
add "Growl (World, Rev 1).mra" "_Growl"
add "Liquid Kids (World).mra" "_Liquid Kids"
add "Mega Blast (World).mra" "_Mega Blast"
add "Solitary Fighter (World).mra" "_Solitary Fighter"
add "The Ninja Kids (World).mra" "_The Ninja Kids"
add "PuLiRuLa (World, dual PCB).mra" "_PuLiRuLa"

#2305
   add "Pac-Land (World).mra" "_Pac-Land" 

#1605
   add "Hopping Mappy.mra" "_Hopping Mappy" 
   add "Wonder Momo.mra" "_Wonder Momo"

#1005
   add "Sky Kid Deluxe (set 1).mra" "_Sky Kid Deluxe"

#2504
   add "Rolling Thunder (rev 3).mra" "_Rolling Thunder" 

#1804

   add "Teenage Mutant Ninja Turtles - Turtles in Time (4 Players ver UAA).mra" "_Teenage Mutant Ninja Turtles - Turtles in Time"

#0404
   add "Bronx.mra" "_Bronx"

#2203
   add "Mazinger Z (Japan).mra" "_Mazinger Z"

#1403
   add "Raiga - Strato Fighter (US).mra" "_Raiga"
#0703
   add "Wild Fang - Tecmo Knight.mra" "_Wild Fang"

#0302
   add "N.Y. Captor.mra" "_N.Y. Captor"

#0222
   add "Victorious Nine.mra" "_Victorious Nine"

#0208
   add "Onna Sanshirou - Typhoon Gal.mra" "_Onna Sanshirou"

#0124
   add "The Combatribes (US, Rev 2, Set 1).mra" "_The Combatribes"
   add "Double Dragon 3 The Rosetta Stone (US).mra" "_Double Dragon 3 The Rosetta Stone"
   add "WWF WrestleFest (World).mra" "_WWF WrestleFest"
   add "" "_Cuebrick"

#0117
   add "Vulcan Venture (New).mra" "_Vulcan Venture"

#0103
   add "Shadow Warriors (World, set 1).mra" "_Shadow Warriors"

#1231
   add "Devil World.mra" "_Devil World" 

#1214
   add "The FairyLand Story.mra" "_The FairyLand Story"

#1108
   add "Tehkan World Cup (set 1).mra" "_Tehkan World Cup"
   add "Gradius.mra" "_Gradius"
   add "TwinBee.mra" "_TwinBee"
   add "Galactic Warriors.mra" "_Galactic Warriors"

#1106
   add "Bomber Man - Dyna Blaster.mra" "_Bomber Man"
   add "Bomber Man World - New Dyna Blaster - Global Quest.mra" "_Bomber Man World"
   add "Risky Challenge.mra" "_Risky Challenge"
   
#1024
   add "Lifeforce (US).mra" "_Lifeforce"
#1011
   add "X-Men (4 Players ver EBA).mra" "_X-Men"
#0920
   add "Avengers (US, revision C).mra" "_Avengers"
#0830
   add "Circus Charlie (level select, set 1).mra" "_Circus Charlie"
#0818
   add "Salamander (version D).mra" "_Salamander"
#   add "Kyukyoku Tiger (Japan, 2P Co-op).mra" "_Twin Cobra"
#0728
   add "Sunset Riders (4 Players ver EAC).mra" "_Sunset Riders"
#0712
   add "Michael Jackson's Moonwalker (World) (FD1094-8751 317-0159).mra" "_Michael Jackson's Moonwalker"
#0628
   add "Bakutotsu Kijuutei.mra" "_Bakutotsu Kijuutei"
   add "Rompers (Japan, new version (Rev B)).mra" "_Rompers"
#0622
   add "Super Locomotive.mra" "_Super Locomotive"
#0614
   add "Clutch Hitter (US) (FD1094 317-0176).mra" "_Clutch Hitter"
   add "Tank Force (US, 2 Players).mra" "_Tank Force"
#0531
   add "Alien Storm (World, 2 Players) (FD1094 317-0154).mra" "_Alien Storm"
#0525
   add "Shadow Dancer (World).mra" "_Shadow Dancer"
   add "Bloxeed (Japan) (FD1094 317-0139).mra" "_Bloxeed"
   add "Quester (Japan).mra" "_Quester"
   add "Chou Zetsurinjin Berabowman (Japan, Rev C).mra" "_Chou Zetsurinjin Berabowman"
#0514
   add "Air Assault (World).mra" "_Air Assault"
#0512
   add "Teki Paki.mra" "_Teki Paki"
#0503
   add "Boxy Boy (World, SB2).mra" "_Boxy Boy"
   add "Marchen Maze (Japan).mra" "_Marchen Maze"
   add "Shadowland (YD3).mra" "_Shadowland"
#0419
   add "Blast Off (Japan).mra" "_Blast Off"
   add "Dangerous Seed (Japan).mra" "_Dangerous Seed" 
   add "Dragon Spirit (new version (DS3)).mra" "_Dragon Spirit"
   add "Pistol Daimyo no Bouken (Japan).mra" "_Pistol Daimyo no Bouken" 
#0406
   add "Pac-Mania.mra" "_Pac-Mania"
#0329
   add "Galaga '88.mra" "_Galaga '88"
   add "Toki (World, set 1).mra" "_Toki"
#0216
   add "Vendetta (World, 4 Players, ver. T).mra" "_Vendetta"
#0209
   add "Parodius Da! Shinwa kara Owarai e (World, set 1).mra" "_Parodius Da! Shinwa kara Owarai e"
#0121
   add "Carnival.mra" "_Carnival"
   add "Pulsar.mra" "_Pulsar"
#0107
   add "Jitsuryoku!! Pro Yakyuu (Japan).mra" "_Jitsuryoku!! Pro Yakyuu"
   add "Plus Alpha.mra" "_Plus Alpha"
#0102
add "Hachoo.mra" "_Hachoo"
add "In Your Face (US, Prototype).mra" "_In Your Face"
add "" "_E.D.F. - Earth Defense Force"

#1219
add "Polaris.mra" "_Polaris"
#1208
add "Renegade (US).mra" "_Renegade"
add "Tokio - Scramble Formation (newer).mra" "_Tokio"
#1124
add "Thunder Cross (set 1).mra" "_Thunder Cross"
#1117
add "Gang Busters (set 1).mra" "_Gang Busters"
#1031
add  "Splatter House (World, new version (SH3)).mra" "_Splatter House"
#0924
add "Iga Ninjyutsuden (Japan).mra" "_Ninja Kazan"
#0901
add "The Final Round (version M).mra" "_The Final Round"
#0824
add "Punk Shot (US 4 Players).mra" "_Punk Shot"
add "M.I.A. - Missing in Action (version T).mra" "_M.I.A. - Missing in Action"
#0818
add "Teenage Mutant Ninja Turtles (World 4 Players, version X).mra" "_Teenage Mutant Ninja Turtles"
#0811
add "The Simpsons (4 Players World, set 1).mra" "_The Simpsons"
#0716
add "Saint Dragon (Set 1).mra" "_Saint Dragon"
#0709
add "" "_Avenging Spirit"
#0702
add "P-47 - The Freedom Fighter (Japan).mra" "_P-47 - The Freedom Fighter"
add "The Lord of King (Japan).mra" "_The Astyanax"
#0630
add "Crime Fighters (World 2 players).mra" "_Crime Fighters"
#0617
add  "Alpine Ski.mra" "_Alpine Ski"
add  "Bio Attack.mra" "_Bio Attack"
add  "Front Line.mra" "_Front Line"
add  "High Way Race.mra" "_High Way Race"
add  "Space Cruiser.mra" "_Space Cruiser"
add  "Water Ski.mra" "_Water Ski"
add  "Wild Western.mra" "_Wild Western"
add  "Jungle Hunt.mra" "_Jungle Hunt"
#add  "Elevator Action.mra" "_Elevator Action"
add  "Elevator Action Bootleg.mra" "_Elevator Action"
add  "Jungle King.mra" "_Jungle King"
add  "Kick Start Wheelie King.mra" "_Kick Start Wheelie King"
add  "Pirate Pete.mra" "_Pirate Pete"
add  "Sea Fighter Poseidon.mra" "_Sea Fighter Poseidon"
add  "Space Seeker.mra" "_Space Seeker"
add  "The Tin Star.mra" "_The Tin Star"
add  "Time Tunnel.mra" "_Time Tunnel"
#0609
add "Demons World - Horror Story (Set 3).mra" "_Demon's World"
add "Super Contra (set 1).mra" "_Super Contra"
#0602
add "Rally Bike - Dash Yarou.mra" "_Rally Bike"
add "Kick And Run.mra" "_Kick And Run"
#0527
add "Vimana (Japan).mra" "_Vimana"
add "Same! Same! Same! (2P Set).mra" "_Fire Shark"
#0520
add "Soldam.mra" "_Soldam"
#0513
add "Rod-Land (World, set 1).mra" "_Rod-Land"
#0512
add "Aliens (World set 1).mra" "_Aliens"
add "Arkanoid - Revenge of DOH (World).mra" "_Arkanoid II"
add "Chuka Taisen (World) (P0-028-A PCB).mra" "_Chuka Taisen"
add "Dr. Toppel's Adventure (World).mra" "_Dr. Toppel's Adventure"
add "Extermination (World).mra" "_Extermination"
add "Kageki (World).mra" "_Kageki"
add "Insector X (World).mra" "_Insector X"
add "#sh (World, new version) (P0-043A PCB).mra" "_The NewZealand Story"
#0428
#add "Arkanoid - Revenge of DOH (World).mra" "_Arkanoid II"
#add "M.I.A. - Missing in Action (rev T).mra" "_M.I.A. - Missing in Action"
#add "Teenage Mutant Ninja Turtles (World 4 Players, version X).mra" "_Teenage Mutant Ninja Turtles"
#0416
add "Battletoads.mgl" "_Battletoads"
#0414
add "Haunted Castle (version M).mra" "_Haunted Castle"
#0331
add "Paddle Mania.mra" "_Paddle Mania"
add "The Next Space (Japan).mra" "_The Next Space"
#0330
add "Lethal Thunder (World).mra" "_Lethal Thunder"
add "Blade Master (World).mra" "_Blade Master"
add "Gun Force II (US).mra" "_Gun Force II"
add "Gunforce - Battle Fire Engulfed Terror Island (World).mra" "_Gunforce - Battle Fire Engulfed Terror Island"
add "Hook (World).mra" "_Hook"
add "In The Hunt (World).mra" "_In The Hunt"
add "Mystic Riders (World).mra" "_Mystic Riders"
add "Ninja Baseball Bat Man (World).mra" "_Ninja Baseball Bat Man"
add "R-Type Leo (World).mra" "_R-Type Leo"
add "Undercover Cops (World).mra" "_Undercover Cops"
#0324
add "Out Run (sitdown-upright, Rev B).mra" "_Out Run"
#0224
add "The NewZealand Story (World, new version) (P0-043A PCB).mra" "_The NewZealand Story"
add "Chuka Taisen (World) (P0-028-A PCB).mra" "_Chuka Taisen"
add "Dr. Toppel's Adventure (World).mra" "_Dr. Toppel's Adventure"
add "Plump Pop (Japan).mra" "_Plump Pop"
#0120
add "Wonder Planet (Japan).mra" "_Wonder Planet"
#0118
add "Performan (Japan).mra" "_Performan"
#0113
add "Karnov (US, rev 6).mra" "_Karnov"
#0106
add "Extermination (World).mra" "_Extermination"
#1228
add "Tiger Heli Bootleg.mra" "_Tiger Heli"
#1227
add "SlapFight Bootleg.mra" "_SlapFight"
#1225
add "Pipi & Bibis - Whoopee!! (Z80 sound cpu, set 1).mra" "_Pipi & Bibis"
#1223
add "Chelnov - Atomic Runner (World).mra" "_Chelnov"
add "Karnov (US, rev 6).mra" "_Karnov"
add "Sky Soldiers (US).mra" "_Sky Soldiers"
add "Time Soldiers (US Rev 3).mra" "_Time Soldiers"
#1216
add "Kageki (World).mra" "_Kageki"
#1209
add "Insector X (World).mra" "_Insector X"
#1201
add "Peter Pack Rat.mra" "_Peter Pack Rat"
#1124
add "XSleenaBA.mra" "_Xain'd Sleena"
#1119
add "Crystal Castles.mra" "_Crystal Castles"
#1118
add "Turbo Out Run (Out Run upgrade) (FD1094 317-0118).mra" "_Turbo Out Run"
add "Gang Wars.mra" "_Gang Wars"
#1118
add "Sky Adventure (World).mra" "_Sky Adventure"
#1117
add "Express Raider.mra" "_Express Raider"
#1114
add "Congo Bongo.mra" "_Congo Bongo"
#1113
add "Bosconian - Star Destroyer (new version).mra" "_Bosconian"
add "Tropical Angel.mra" "_Tropical Angel"
#1111
add "Exerion (Jaleco).mra" "_Exerion"
#1109
add "SonSon.mra" "_SonSon"
#1105
add "Out Run (sitdown-upright, Rev B).mra" "_Out Run"
#1010
add "Nova 2001.mra" "_Nova 2001"
#0810
add "Raiders5.mra" "_Raiders5"
#0510
add "BankPanic.mra" "_BankPanic"
#0110
add "Super Hang-On (sitdown-upright) (unprotected).mra" "_Super Hang-On"
#2909
add "P.O.W. - Prisoners of War (US Version 1).mra" "_P.O.W. - Prisoners of War"
#2909
add "Ikari III - The Rescue (World Version 1, 8-Way Joystick).mra" "_Ikari III - The Rescue"
#2509
add "Street Smart (US Version 2).mra" "_Street Smart"
#2509
add "SAR - Search And Rescue (World).mra" "_S.A.R. - Search and Rescue"
#1409
add "Cosmo Police Galivan (12-26-1985).mra" "_Galivan"
#1009
add "Ufo Robo Dangar (4-07-1987).mra" "_Ufo Robo Dangar"
#1009
add "Karate Champ (US).mra" "_Karate Champ"
#1009
add "" "_R-Type II"
#0509
add "" "_Snow Bros. 2"
#0109
add "" "_Hammerin' Harry"
#0109
add "" "_Final Fight AE"
#3008
add "" "_Air Duel"
#3008
add "" "_X Multiply"
#2708
add "Prehistoric Isle in 1930 (World).mra" "_Prehistoric Isle in 1930"
#2508
add "" "_Mr. HELI no Daibouken"
#2508
add "" "_Legend of Hero Tonma"
#2508
add "" "_Dragon Breed"
#2208
add "$RegSourceRoot/chameleon.mra" "_Chameleon"
#1608
add "" "_Gallop"
#1608
add "" "_Image Fight"
#1608
add "" "_Ninja Spirit"
#2407
add "" "_R-Type"
#0207
add "Psychic 5 (World).mra" "_Psychic 5"

dot
