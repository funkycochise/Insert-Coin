 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

RegSourceRoot=/media/fat/_Arcade
ALT=/media/fat/_Arcade/_alternatives

MainDir="_Jaleco"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Psychic 5 (World).mra" "_Psychic 5"
   addgame "Exerion (Jaleco).mra" "_Exerion"
   addgame "Exerion (Taito).mra" "_Exerion"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Rod-Land (World, set 1).mra" "_Rod-Land"
   addgame "chameleon.mra" "_Chameleon"
fi

exit 0