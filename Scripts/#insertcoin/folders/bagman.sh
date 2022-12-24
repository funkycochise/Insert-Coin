 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Bagman"

cd $OutputRoot

create "$MainDir"

orientation=$2

#if [ -z "$orientation" ] || [ "$orientation" = "V" ];
#then
#   special_echo "$MainDir $orientation is empty or V"
#fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   special_echo "$MainDir $orientation is empty or H"
   addgame "Bagman.mra" "_Bagman"
   addgame "Botanic (English, Spanish, Set 1).mra" "_Botanic"
   addgame "Botanic.mra" "_Botanic"
   addgame "Pickin'.mra" "_Pickin"
   addgame "Squash.mra" "_Squash"
   addgame "Super Bagman.mra" "_Super Bagman"
fi
exit 0
