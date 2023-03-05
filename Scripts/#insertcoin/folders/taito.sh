 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Taito"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Alcon Bootleg.mra" "_SlapFight"
   addgame "Arkanoid (JP).mra" "_Arkanoid"
   addgame "Arkanoid (Unl. lives) [hb].mra" "_Arkanoid"
   addgame "Arkanoid (US).mra" "_Arkanoid"
   addgame "Arkanoid (W).mra" "_Arkanoid"
   addgame "Balloon Bomber.mra" "_Balloon Bomber"
   addgame "Dr. Toppel's Adventure (World).mra" "_Dr. Toppel's Adventure"
   addgame "Kageki (World).mra" "_Kageki"
   addgame "Lunar Rescue.mra" "_Lunar Rescue"
   addgame "Lupin III (Set 2).mra" "_Lupin III"
   addgame "SlapFight Bootleg.mra" "_SlapFight"
   addgame "Space Chaser.mra" "_Space Chaser"
   addgame "Space Invaders Part II (Taito, Bigger ROMs).mra" "_Space Invaders Part II"
   addgame "Space Invaders.mra" "_Space Invaders"
   addgame "Tiger Heli Bootleg.mra" "_Tiger Heli"
   addgame "Tokio - Scramble Formation (bootleg).mra" "_Tokio"
   addgame "Extermination (World).mra" "_Extermination"
   

fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Bubble Bobble (Japan, Ver 0.1).mra" "_Bubble Bobble"
   addgame "Chuka Taisen (World) (P0-028-A PCB).mra" "_Chuka Taisen"
   addgame "Colony 7 (Set 1).mra" "_Colony7"
   addgame "Crazy Balloon.mra" "_Crazy Balloon"
   addgame "Insector X (World).mra" "_Insector X"
   addgame "Plump Pop (Japan).mra" "_Plump Pop"
   addgame "Rastan (World Rev 1).mra" "_Rastan"
   addgame "The NewZealand Story (World, old version) (P0-041A PCB).mra" "_The NewZealand Story"
fi
exit 0
