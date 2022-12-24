 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

#MainDir="_Robotron"

cd $OutputRoot

#create "$MainDir"
orientation=$2

#if [ -z "$orientation" ] || [ "$orientation" = "V" ];
#then
#   #special_echo "\$orientation is empty or V"
#fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Alien Arena.mra" "_Robotron"
   addgame "Bubbles.mra" "_Robotron"
   addgame "Joust.mra" "_Robotron"
   addgame "Playball.mra" "_Robotron"
   addgame "Robotron 2084.mra" "_Robotron"
   addgame "Sinistar.mra" "_Robotron"
   addgame "Splat!.mra" "_Robotron"
   addgame "Stargate.mra" "_Robotron"
fi
exit 0