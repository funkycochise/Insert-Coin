 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

RegSourceRoot=/media/fat/_Arcade
ALT=/media/fat/_Arcade/_alternatives

MainDir="_SNK"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "ASO.mra" "_ASO"
   addgame "FightingGolf.mra" "_FightingGolf"
   addgame "Ikari Warriors.mra" "_Ikari Warriors"
   addgame "Sky Soldiers (US).mra" "_Sky Soldiers"
   addgame "TNKIII.mra" "_TNKIII"
   addgame "Victory Road.mra" "_Victory Road"
   addgame "SAR - Search And Rescue (World).mra" "_S.A.R. - Search and Rescue"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Athena.mra" "_Athena"
   addgame "CountryClub.mra" "_CountryClub"
   addgame "Prehistoric Isle in 1930 (World).mra" "_Prehistoric Isle in 1930"
   addgame "Street Smart (US Version 2).mra" "_Street Smart"
   addgame "P.O.W. - Prisoners of War (US Version 1).mra" "_P.O.W. - Prisoners of War"
   addgame "Ikari III - The Rescue (World Version 1, 8-Way Joystick).mra" "_Ikari III - The Rescue"
fi
exit 0
