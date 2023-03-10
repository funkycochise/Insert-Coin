 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Universal"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"

   addgame "Cosmic Alien.mra" "_Cosmic Alien"
   addgame "Devil Zone.mra" "_Devil Zone"
   addgame "Galaxy Wars (Universal, Set 1).mra" "_Galaxy Wars"
   addgame "Lady Bug.mra" "_Lady Bug"
   addgame "Magical Spot.mra" "_Magical Spot"
   addgame "Mr. Do! Fixed.mra" "_Mr. Do!"
   addgame "Mr. Do!.mra" "_Mr. Do!"
   addgame "No Mans Land.mra" "_No Mans Land"
   addgame "Space Panic.mra" "_Space Panic"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Snap Jack.mra" "_Snap Jack"
fi
exit 0