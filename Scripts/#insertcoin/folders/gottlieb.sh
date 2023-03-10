 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Gottlieb"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Curve Ball.mra" "_Curve Ball"
   addgame "Insector.mra" "_Insector"
   addgame "Mad Planets.mra" "_Mad Planets"
   addgame "QBert Qubes.mra" "_QBert Qubes"
   addgame "Q'bert (US, Set 1).mra" "_QBert"
   addgame "Tylz.mra" "_Tylz"
fi
#if [ -z "$orientation" ] || [ "$orientation" = "H" ];
#then
#   #special_echo "\$orientation is empty or H"
#fi

exit 0