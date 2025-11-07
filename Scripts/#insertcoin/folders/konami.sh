#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep konami $names)
else
   konami="_Konami"
fi
dir=$konami

resh=$(exist "Combat School (joystick).mra")
resv=$(exist "Contra (US - Asia, set 1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V"  "Amidar (Scramble).mra" "_Amidar" "" "PUZ"
   add "$dir" "V"  "Ajax.mra" "_Ajax" "" "STG"
   add "$dir" "V"  "Circus Charlie (level select, set 1).mra" "_Circus Charlie" "" "ACT"
   add "$dir" "V"  "Contra (US - Asia, set 1).mra" "_Contra" "" "RNG"
   add "$dir" "V"  "Fast Lane.mra" "_Fast Lane" "" "ACT"
   add "$dir" "V"  "Finalizer - Super Transformation (Set 1).mra" "_Finalizer - Super Transformation" "" "STG"
   add "$dir" "V"  "Finalizer - Super Transformation (Set 2) [bl].mra" "_Finalizer - Super Transformation" "" "STG"
   add "$dir" "V"  "Finalizer - Super Transformation (Set 2).mra" "_Finalizer - Super Transformation" "" "STG"
   add "$dir" "V"  "Frogger (Konami Bugfixed).mra" "_Frogger" "" "ACT"
   add "$dir" "V"  "Galactic Warriors.mra" "_Galactic Warriors" "" "STG"
   add "$dir" "V"  "Gang Busters (set 1).mra" "_Gang Busters"
   add "$dir" "V"  "Gyruss.mra" "_Gyruss" "" "STG"
   add "$dir" "V"  "Jackal (W) [bl].mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "Jackal (W).mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "Jackal (W, Rotary).mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "Kicker.mra" "_Kicker" "" "ACT"
   add "$dir" "V"  "Lightning Fighters (World).mra" "_Lightning Fighters" "" "STG"
   add "$dir" "V"  "Mikie.mra" "_Mikie" "" "ACT"
   add "$dir" "V"  "MX5000.mra" "_MX5000" "" "STG"
   add "$dir" "V"  "Pooyan.mra" "_Pooyan" "" "ACT"
   add "$dir" "V"  "Road Fighter (set 1).mra" "_Road Fighter" "" "ACT"
   add "$dir" "V"  "Roc'n Rope.mra" "_Roc'n Rope" "" "ACT"
   add "$dir" "V"  "Scooter Shooter.mra" "_Scooter Shooter" "" "STG"
   add "$dir" "V"  "Scramble (Stern, Set 1).mra" "_Scramble" "" "STG"
   add "$dir" "V"  "Super Basketball (version I, encrypted).mra" "_Super Basketball" "" "SPO"
   add "$dir" "V"  "Super Cobra.mra" "_Super Cobra" "" "STG"
   add "$dir" "V"  "Super Contra (set 1).mra" "_Super Contra" "" "RNG"
   add "$dir" "V"  "The End.mra" "_The End" "" "STG"
   add "$dir" "V"  "Time Pilot '84 (Set 1).mra" "_Time Pilot 84" "" "STG"
   add "$dir" "V"  "Time Pilot '84 (Set 2).mra" "_Time Pilot 84" "" "STG"
   add "$dir" "V"  "Time Pilot '84 (Set 3).mra" "_Time Pilot 84" "" "STG"
   add "$dir" "V"  "Time Pilot.mra" "_Time Pilot" "" "STG"
   add "$dir" "V"  "Tokushu Butai Jackal (JP).mra" "_Jackal" "" "STG"
   add "$dir" "V"  "Top Gunner (US) [bl].mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "Top Gunner (US).mra" "_Jackal" "" "RNG"
   add "$dir" "V"  "Trick Trap (World).mra" "_Labyrinth Runner" "" "STG"
   add "$dir" "V"  "TwinBee (Bubble System).mra" "_TwinBee" "" "STG"

   add "$dir" "H"  "Aliens (World set 1).mra" "_Aliens" "" "BEA"
   add "$dir" "H"  "Combat School (joystick).mra" "_Combat School" "" "ACT"
   add "$dir" "H"  "Crime Fighters (World 2 players).mra" "_Crime Fighters"  "" "BEA"
   add "$dir" "H"  "Golfing Greats (World, version L).mra" "_Golfing Greats" "" "SPO"
   add "$dir" "H"  "Gradius.mra" "_Gradius" "" "STG"
   add "$dir" "H"  "Green Beret.mra" "_Green Beret" "" "RNG"
   add "$dir" "H"  "Haunted Castle (version M).mra" "_Haunted Castle" "" "ACT"
   add "$dir" "H"  "Hyper Sports.mra" "_Hyper Sports" "" "SPO"
   add "$dir" "H"  "Iron Horse (Ver. K).mra" "_Iron Horse" "" "RNG"
   add "$dir" "H"  "Jailbreak.mra" "_JailBreak" "" "RNG"
   add "$dir" "H"  "Konami's Ping-Pong.mra" "_Konami's Ping-Pong" "" "SPO"
   add "$dir" "H"  "Lifeforce (US).mra" "_Lifeforce" "" "STG"
   add "$dir" "H"  "M.I.A. - Missing in Action (version T).mra" "_M.I.A. - Missing in Action" "" "RNG"
   add "$dir" "H"  "Mr. Goemon.mra" "_Mr. Goemon" "" "ACT"
   add "$dir" "H"  "Nemesis (ROM Version).mra" "_Nemesis" "" "STG"
   add "$dir" "H"  "Parodius Da! Shinwa kara Owarai e (World, set 1).mra" "_Parodius Da! Shinwa kara Owarai e" "" "STG"
   add "$dir" "H"  "Punk Shot (US 4 Players).mra" "_Punk Shot" "" "SPO"
   add "$dir" "H"  "River Patrol (JP, Unprotected).mra" "_River Patrol" "" "ACT"
   add "$dir" "H"  "Run and Gun (ver EAA 1993 10.8).mra" "_Run and Gun" "" "SPO
   add "$dir" "H"  "Salamander (version D).mra" "_Salamander" "STG"
   add "$dir" "H"  "Splatter House (World, new version (SH3)).mra" "_Splatter House" "" "ACT"
   add "$dir" "H"  "Sunset Riders (4 Players ver EAC).mra" "_Sunset Riders" "" "RNG"
   add "$dir" "H"  "Surprise Attack (World ver. K).mra" "_Surprise Attack" "" "ACT"
   add "$dir" "H"  "Teenage Mutant Ninja Turtles - Turtles in Time (4 Players ver UAA).mra" "_Teenage Mutant Ninja Turtles - Turtles in Time" "_TMNT2 (COC)" "BEA"
   add "$dir" "H"  "Teenage Mutant Ninja Turtles - Turtles in Time (4 Players ver UAA).mra" "_Teenage Mutant Ninja Turtles 2" "_TMNT2 (Jotego)" "BEA"
   add "$dir" "H"  "Teenage Mutant Ninja Turtles (World 4 Players, version X).mra" "_Teenage Mutant Ninja Turtles" "_TMNT" "BEA"
   add "$dir" "H"  "The Simpsons (4 Players World, set 1).mra" "_The Simpsons" "" "BEA"
   add "$dir" "H"  "Thunder Cross (set 1).mra" "_Thunder Cross" "" "STG"
   add "$dir" "H"  "Track & Field.mra" "_Track & Field" "" "SPO"
   add "$dir" "H"  "Vendetta (World, 4 Players, ver. T).mra" "_Vendetta" "" "BEA"
   add "$dir" "H"  "X-Men (4 Players ver EBA).mra" "_X-Men" "" "BEA"
   add "$dir" "H"  "Yie Ar Kung-Fu (program code I).mra" "_Yie Ar Kung-Fu" "" "ACT"
   dot
fi
