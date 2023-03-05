 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

#MainDir="_Galaxian"

cd $OutputRoot

#create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Azurian Attack.mra" "_Galaxian"
   addgame "Black Hole.mra" "_Galaxian"
   addgame "Catacomb.mra" "_Galaxian"
   addgame "Clean Sweep.mra" "_Galaxian"
   addgame "Devil Fish (Galaxian Hardware).mra" "_Galaxian"
   addgame "Galaxian (Namco, Set 1).mra" "_Galaxian"
   addgame "King and Balloon (Japan).mra" "_Galaxian"
   addgame "King and Balloon (US).mra" "_Galaxian"
   addgame "Lucky Today.mra" "_Galaxian"
   addgame "Moon Cresta (Galaxian Hardware) [bl].mra" "_Galaxian"
   addgame "Mr. Do Nightmare.mra" "_Galaxian"
   addgame "Omega [bl].mra" "_Galaxian"
   addgame "Orbitron.mra" "_Galaxian"
   addgame "Pisces.mra" "_Galaxian"
   addgame "UniWar S.mra" "_Galaxian"
   addgame "Victory.mra" "_Galaxian"
   addgame "War of the Bugs.mra" "_Galaxian"
fi

exit 0