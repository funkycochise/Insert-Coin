 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Ladybug"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Cosmic Avenger.mra" "_Cosmic Avenger"
   addgame "Lady Bug.mra" "_Lady Bug"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Dorodon.mra" "_Dorodon"
   addgame "Snap Jack.mra" "_Snap Jack"
fi

exit 0