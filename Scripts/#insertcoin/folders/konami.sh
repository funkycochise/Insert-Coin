 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Konami"
RegSourceRoot=/media/fat/_Arcade

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   addgame "Amidar (Scramble).mra" "_Amidar"
   addgame "Amidar.mra" "_Amidar"
   addgame "Fast Lane.mra" "_Fast Lane"
   addgame "Finalizer - Super Transformation (Set 1).mra" "_Finalizer - Super Transformation"
   addgame "Finalizer - Super Transformation (Set 2) [bl].mra" "_Finalizer - Super Transformation"
   addgame "Finalizer - Super Transformation (Set 2).mra" "_Finalizer - Super Transformation"
   addgame "Frogger (Konami Bugfixed).mra" "_Frogger"
   addgame "Frogger (Sega, Set 2).mra" "_Frogger"
   addgame "Frogger.mra" "_Frogger"
   addgame "Gyruss (bootleg).mra" "_Gyruss"
   addgame "Gyruss (Centuri).mra" "_Gyruss"
   addgame "Gyruss.mra" "_Gyruss"
   addgame "Jackal (W) [bl].mra" "_Jackal"
   addgame "Jackal (W).mra" "_Jackal"
   addgame "Jackal (W, Rotary).mra" "_Jackal"
   addgame "Kicker.mra" "_Kicker"
   addgame "Mikie.mra" "_Mikie"
   addgame "MX5000.mra" "_MX5000"
   addgame "Pooyan.mra" "_Pooyan"
   addgame "Road Fighter (set 1).mra" "_Road Fighter"
   addgame "Roc'n Rope.mra" "_Roc'n Rope"
   addgame "Scramble (Stern, Set 1).mra" "_Scramble"
   addgame "Scramble.mra" "_Scramble"
   addgame "Super Basketball (version I, encrypted).mra" "_Super Basketball"
   addgame "Super Cobra.mra" "_Super Cobra"
   addgame "The End (bkg).mra" "_The End"
   addgame "The End.mra" "_The End"
   addgame "Time Pilot '84 (Set 1).mra" "_Time Pilot 84"
   addgame "Time Pilot '84 (Set 2).mra" "_Time Pilot 84"
   addgame "Time Pilot '84 (Set 3).mra" "_Time Pilot 84"
   addgame "Time Pilot.mra" "_Time Pilot"
   addgame "Tokushu Butai Jackal (JP).mra" "_Jackal"
   addgame "Top Gunner (US) [bl].mra" "_Jackal"
   addgame "Top Gunner (US).mra" "_Jackal"
   addgame "Trick Trap (World).mra" "_Labyrinth Runner"
   addgame "Venus (bootleg of Gyruss).mra" "_Gyruss"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   addgame "Combat School Joystick.mra" "_Combat School"
   addgame "Green Beret.mra" "_Green Beret"
   addgame "Hyper Sports.mra" "_Hyper Sports"
   addgame "Iron Horse (Ver. K).mra" "_Iron Horse"
   addgame "Jailbreak.mra" "_JailBreak"
   addgame "Konami's Ping-Pong.mra" "_Konami's Ping-Pong"
   addgame "Manhattan 24 Bunsyo (J).mra" "_JailBreak"
   addgame "Nemesis (ROM Version).mra" "_Nemesis"
   addgame "Mr. Goemon.mra" "_Mr. Goemon"
   addgame "River Patrol (JP, Unprotected).mra" "_River Patrol"
   addgame "River Patrol.mra" "_River Patrol"
   addgame "Rush'n Attack (US).mra" "_Green Beret"
   addgame "Scooter Shooter.mra" "_Scooter Shooter"
   addgame "Track & Field.mra" "_Track & Field"
   addgame "Yie Ar Kung-Fu (program code I).mra" "_Yie Ar Kung-Fu"
fi

exit 0