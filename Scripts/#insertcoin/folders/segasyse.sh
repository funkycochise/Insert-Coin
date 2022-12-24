 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Sega-SystemE"

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
   addgame "Astro Flash (Japan).mra" "_SystemE_Astro Flash" "_Astro Flash"
   addgame "Fantasy Zone II - The Tears of Opa-Opa.mra" "_SystemE_Fantasy Zone 2" "_Fantasy Zone 2"
   addgame "Hang On Jr.mra" "_SystemE_Hang On Jr" "_Hang On Jr"
   addgame "Megumi Rescue (Japan).mra" "_SystemE_Megumi Rescue" "_Megumi Rescue"
   addgame "Opa Opa (Rev A, unprotected).mra" "_SystemE_Opa Opa" "_Opa Opa"
   addgame "Opa Opa.mra" "_SystemE_Opa Opa" "_Opa Opa"
   addgame "Riddle of Pythagoras (Japan).mra" "_SystemE_Riddle of Pythagoras" "_Riddle of Pythagoras"
   addgame "Slap Shooter.mra" "_SystemE_Slap Shooter" "_Slap Shooter"
   addgame "Tetris (Japan, System E).mra" "_SystemE_Tetris" "_Tetris"
fi

exit 0