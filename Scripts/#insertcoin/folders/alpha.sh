 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Alpha Denshi"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   addgame "Sky Adventure (World).mra" "_Sky Adventure"
   addgame "Sky Soldiers (US).mra" "_Sky Soldiers"
   addgame "Time Soldiers (US Rev 3).mra" "_Time Soldiers"

fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Gang Wars.mra" "_Gang Wars"
fi


exit 0