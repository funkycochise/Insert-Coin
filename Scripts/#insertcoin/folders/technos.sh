 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Technos"

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
   addgame "Double Dragon.mra" "_Double Dragon"
   addgame "Double Dragon II - The Revenge.mra" "_Double Dragon II - The Revenge"
   addgame "V'Ball (US) [bl].mra" "_V'Ball"
   addgame "V'Ball (US).mra" "_V'Ball"
   addgame "Renegade (US bootleg).mra" "_Renegade"
   addgame "Nekketsu Kouha Kunio-kun (Japan bootleg).mra" "_Renegade"
   addgame "XSleenaBA.mra" "_Xain'd Sleena"
   addgame "XSleenaB.mra" "_Xain'd Sleena"
fi
exit 0