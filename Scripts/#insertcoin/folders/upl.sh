 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Upl"

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
   #addgame "Combat Hawk.mra" "_Combat Hawk"
   addgame "Ninjakun.mra" "_Ninjakun Majou no Bouken"
   addgame "Penguin-Kun_Wars_Japan.mra" "_Penguin-Kun Wars"
   addgame "Penguin-Kun_Wars.mra" "_Penguin-Kun Wars"
   addgame "Raiders5.mra" "_Raiders5"
   addgame "Nova 2001.mra" "_Nova 2001"
fi
exit 0
