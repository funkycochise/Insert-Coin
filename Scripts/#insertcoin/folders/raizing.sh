 #!/bin/bash  

source ./folders/functions.sh

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Raizing-8ing"
RegSourceRoot=/media/fat/_Arcade

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Armed Police Batrider (USA) (Fri Feb 13 1998).mra" "_Batrider"
   addgame "Battle Bakraid - Unlimited Version (USA) (Tue Jun 8 1999).mra" "_Battle Bakraid"
   addgame "Battle Garegga (Europe - USA - Japan - Asia) (Sat Feb 3 1996).mra" "_Battle Garegga"
   addgame "Kingdom Grandprix.mra" "_Kingdom Grandprix"
   addgame "Sorcer Striker.mra" "_Sorcer Striker"
   addgame "Mahou Daisakusen (Japan).mra" "_Sorcer Striker"
fi
#if [ -z "$orientation" ] || [ "$orientation" = "H" ];
#then
#   #special_echo "\$orientation is empty or H"
#fi

exit 0