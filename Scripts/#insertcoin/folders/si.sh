 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

#MainDir="_Space Invaders"

cd $OutputRoot

#create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "280Z-ZZAP.mra" "_Space Invaders"
   addgame "Amazing Maze.mra" "_Space Invaders"
   addgame "Attack Force.mra" "_Space Invaders"
   addgame "Balloon Bomber.mra" "_Space Invaders"
   addgame "Blue Shark.mra" "_Space Invaders"
   addgame "Boot Hill.mra" "_Space Invaders"
   addgame "Clowns.mra" "_Space Invaders"
   addgame "Cosmo.mra" "_Space Invaders"
   addgame "Galaxy Wars.mra" "_Space Invaders"
   addgame "Gun Fight.mra" "_Space Invaders"
   addgame "Laguna Racer.mra" "_Space Invaders"
   addgame "Lunar Rescue.mra" "_Space Invaders"
   addgame "Lupin III.mra" "_Space Invaders"
   addgame "Sea Wolf.mra" "_Space Invaders"
   addgame "Shuffleboard.mra" "_Space Invaders"
   addgame "Shuttle Invader.mra" "_Space Invaders"
   addgame "Space Chaser.mra" "_Space Invaders"
   addgame "Space Encounters.mra" "_Space Invaders"
   addgame "Space Invaders II (Midway, cocktail).mra" "_Space Invaders"
   addgame "Space Invaders Part II (Taito, Bigger ROMs).mra" "_Space Invaders"
   addgame "Space Invaders Part II.mra" "_Space Invaders"
   addgame "Space Invaders.mra" "_Space Invaders"
   addgame "Vortex.mra" "_Space Invaders"
fi
#if [ -z "$orientation" ] || [ "$orientation" = "H" ];
#then
#   #special_echo "\$orientation is empty or H"
#fi
