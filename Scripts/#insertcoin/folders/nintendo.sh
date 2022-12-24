 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Nintendo"

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Donkey Kong (Spanish Crazy Kong bootleg).mra" "_Donkey Kong"
   addgame "Donkey Kong (US, Set 1).mra" "_Donkey Kong"
   addgame "Donkey Kong 3 (US).mra" "_Donkey Kong 3"
   addgame "Donkey Kong 3.mra" "_Donkey Kong 3"
   addgame "Donkey Kong Junior (US, Set F-2).mra" "_Donkey Kong Junior"
   addgame "Donkey Kong Junior.mra" "_Donkey Kong Junior"
   addgame "Donkey Kong.mra" "_Donkey Kong"
   addgame "Mario Bros. (US, Rev G).mra" "_Mario Bros"
   addgame "Mario Bros.mra" "_Mario Bros"
   addgame "Radar Scope.mra" "_Radar Scope"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Popeye.mra" "_Popeye"
   addgame "Sky Skipper.mra" "_Sky Skipper"
fi
exit 0