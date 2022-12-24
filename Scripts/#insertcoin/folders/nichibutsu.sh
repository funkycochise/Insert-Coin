 #!/bin/bash  

source ./folders/functions.sh

RegSourceRoot=/media/fat/_Arcade
ALT=/media/fat/_Arcade/_alternatives

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Nichibutsu"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Armed F (Japan).mra" "_Formation Armed F"
   addgame "Cosmo Police Galivan (12-26-1985).mra" "_Galivan"
   addgame "Kid no Hore Hore Daisakusen.mra" "_Booby Kids"
   addgame "Legion - Spinner-87 (World ver 2.03).mra" "_Legion - Spinner-87"
   addgame "Moon Cresta.mra" "_Moon Cresta"
   addgame "Sei Senshi Amatelass.mra" "_Soldier Girl Amazon"
   addgame "Terra Cresta (YM3526 set 1).mra" "_Terra Cresta"
   addgame "Terra Force (Japan).mra" "_Terra Force"
   addgame "Ufo Robo Dangar (4-07-1987).mra" "_Ufo Robo Dangar"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   addgame "Crazy Climber.mra" "_Crazy Climber"
   addgame "Crazy Climber 2 (Japan).mra" "_Crazy Climber 2"
   addgame "Kozure Ookami (Japan).mra" "_Kozure Ookami"
   addgame "Tatakae! Big Fighter (Japan).mra" "_Sky Robo"
fi
exit 0