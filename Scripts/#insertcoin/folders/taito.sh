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
   addgame "Arkanoid (Japan).mra" "_Arkanoid"
   addgame "Arkanoid (JP).mra" "_Arkanoid"
   addgame "Arkanoid (Unl. lives) [hb].mra" "_Arkanoid"
   addgame "Arkanoid (US).mra" "_Arkanoid"
   addgame "Arkanoid (W).mra" "_Arkanoid"
   addgame "Arkanoid (World).mra" "_Arkanoid"
   addgame "Arkanoid.mra" "_Arkanoid"
   addgame "Balloon Bomber.mra" "_Balloon Bomber"
   addgame "Kageki (World).mra" "_Kageki"
   addgame "Lunar Rescue.mra" "_Lunar Rescue"
   addgame "Lupin III (Set 2).mra" "_Lupin III"
   addgame "Lupin III.mra" "_Lupin III"
   addgame "Space Chaser.mra" "_Space Chaser"
   addgame "Space Invaders II (Midway, cocktail).mra" "_Space Invaders Part II"
   addgame "Space Invaders Part II (Taito, Bigger ROMs).mra" "_Space Invaders Part II"
   addgame "Space Invaders Part II.mra" "_Space Invaders Part II"
   addgame "Space Invaders.mra" "_Space Invaders"
   addgame "Tokio - Scramble Formation (bootleg).mra" "_Tokio"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Bubble Bobble (Japan, Ver 0.1).mra" "_Bubble Bobble"
   addgame "Bubble Bobble.mra" "_Bubble Bobble"
   addgame "Colony 7 (Set 1).mra" "_Colony7"
   addgame "Colony 7.mra" "_Colony7"
   addgame "Crazy Balloon.mra" "_Crazy Balloon"
   addgame "Insector X (World).mra" "_Insector X"
   addgame "Rastan (World Rev 1).mra" "_Rastan"
fi
exit 0
