 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Toaplan"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Out Zone.mra" "_Out Zone"
   addgame "Truxton - Tatsujin.mra" "_Truxton"
   addgame "Truxton II - Tatsujin Oh.mra" "_Truxton II"
   addgame "SlapFight Bootleg.mra" "_SlapFight"
    addgame "Alcon Bootleg.mra" "_SlapFight"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Hellfire (2P set).mra" "_Hellfire"
   addgame "Pipi & Bibis - Whoopee!! (Z80 sound cpu, set 1).mra" "_Pipi & Bibis"
   addgame "Zero Wing (2P set).mra" "_Zero Wing"
   addgame "Snow Bros. 2 - With New Elves - Otenki Paradise (Hanafram).mra" "_Snow Bros. 2"
fi
exit 0
