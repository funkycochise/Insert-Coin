 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Irem"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   special_echo "\$orientation is empty or V"
   addgame "Shot Rider (B-Board 89624B-1).mra" "_Shot Rider"
   addgame "Traverse USA- Zippy Race (US).mra" "_Traverse USA"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Moon Patrol.mra" "_Moon Patrol"
   addgame "Vigilante (World, Rev E).mra" "_Vigilante"
   addgame "Tropical Angel.mra" "_Tropical Angel"
fi



exit 0