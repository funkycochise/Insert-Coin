 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Irem M62 Hardware"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   special_echo "\$orientation is empty or V"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Battle Road.mra" "_Battle Road"
   addgame "Horizon (Irem).mra" "_Horizon"
   addgame "Horizon.mra" "_Horizon"
   addgame "Kid Niki - Radical Ninja (W).mra" "_Kid Niki - Radical Ninja"
   addgame "Kung-Fu Master (W).mra" "_Kung-Fu Master"
   addgame "Lode Runner (Set 1).mra" "_Lode Runner"
   addgame "Lode Runner II - The Bungeling Strikes Back.mra" "_Lode Runner II"
   addgame "Lode Runner III - The Golden Labyrinth.mra" "_Lode Runner III"
   addgame "Lode Runner IV - Teikoku Karano Dasshutsu (JP).mra" "_Lode Runner IV"
   addgame "Lode Runner IV - Teikoku Karano Dasshutsu.mra" "_Lode Runner IV"
   addgame "Spelunker II - 23 no Kagi (JP).mra" "_Spelunker II"
   addgame "Spelunker.mra" "_Spelunker"
   addgame "Youjyuden (JP).mra" "_Youjyuden"
fi

 

exit 0