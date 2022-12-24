 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Tehkan-Tecmo"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Bomb Jack.mra" "_Bomb Jack"
   addgame "Gemini Wing.mra" "_Gemini Wing"
   addgame "Pleiads (Centuri).mra" "_Pleiads"
   addgame "Pleiads (Tehkan).mra" "_Pleiads"
   addgame "Pleiads.mra" "_Pleiads"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Rygar (US set 2).mra" "_Rygar"
   addgame "Rygar (US set 3 Old Version).mra" "_Rygar"
   addgame "Rygar.mra" "_Rygar"
   addgame "Silkworm.mra" "_Silkworm"
   addgame "Solomon's Key.mra" "_Solomons Key"
fi
exit 0
