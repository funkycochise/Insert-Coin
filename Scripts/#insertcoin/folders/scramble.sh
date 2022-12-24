 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

#MainDir="_Scramble"

cd $OutputRoot

#create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Amidar (Scramble).mra" "_Scramble"
   addgame "Anteater.mra" "_Scramble" 
   addgame "Armored Car.mra" "_Scramble" 
   addgame "Battle of Atlantis.mra" "_Scramble" 
   addgame "Calipso.mra" "_Scramble" 
   addgame "Dark Planet.mra" "_Scramble" 
   addgame "Frogger.mra" "_Scramble"
   addgame "Lost Tomb.mra" "_Scramble" 
   addgame "Mars.mra" "_Scramble"
   addgame "Mighty Monkey (Scramble Hardware) [bl].mra" "_Scramble"
   addgame "Minefield.mra" "_Scramble"
   addgame "Moon War.mra" "_Scramble" 
   addgame "Rescue.mra" "_Scramble"
   addgame "Scramble.mra" "_Scramble" 
   addgame "Speed Coin.mra" "_Scramble"
   addgame "Strategy X.mra" "_Scramble"
   addgame "Super Cobra.mra" "_Scramble" 
   addgame "Tazz-Mania.mra" "_Scramble"
   addgame "The End.mra" "_Scramble" 
   addgame "Turtles.mra" "_Scramble"
fi
#if [ -z "$orientation" ] || [ "$orientation" = "H" ];
#then
#   #special_echo "\$orientation is empty or H"
#fi

exit 0