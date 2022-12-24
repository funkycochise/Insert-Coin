 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Williams"

cd $OutputRoot

create "$MainDir"

orientation=$2

#if [ -z "$orientation" ] || [ "$orientation" = "V" ];
#then
#   #special_echo "\$orientation is empty or V"
#fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Alien Arena (Stargate upgrade).mra" "_Alien Arena"
   addgame "Alien Arena.mra" "_Alien Arena"
   addgame "Bubbles.mra" "_Bubbles"
   addgame "Colony 7 (Set 1).mra" "_Colony7"
   addgame "Colony 7.mra" "_Colony7"
   addgame "Defender (Red Label).mra" "_Defender"
   addgame "Defender.mra" "_Defender"
   addgame "Inferno (Williams).mra" "_Inferno"
   addgame "Jin.mra" "_Jin"
   addgame "Joust 2 - Survival of the Fittest (revision 2).mra" "_Joust 2"
   addgame "Joust.mra" "_Joust"
   addgame "Mayday (Set 1).mra" "_Mayday"
   addgame "Mayday.mra" "_Mayday"
   addgame "Mystic Marathon.mra" "_Mystic Marathon"
   addgame "Playball (Prototype).mra" "_Playball"
   addgame "Robotron 2084.mra" "_Robotron"
   addgame "Sinistar.mra" "_Sinistar"
   addgame "Space Encounters.mra" "_Space Encounters"
   addgame "Splat!.mra" "_Splat"
   addgame "Stargate.mra" "_Stargate"
   addgame "Turkey Shoot - The Day They Took Over.mra" "_Turkey Shoot"
fi
exit 0