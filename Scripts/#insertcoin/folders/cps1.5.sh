 #!/bin/bash  

source ./folders/functions.sh

OutputRoot=$1

MainDir="_CPS1.5"

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
   addgame  "Cadillacs and Dinosaurs (World 930201).mra" "_Cadillacs and Dinosaurs"
   addgame  "Muscle Bomber Duo Ultimate Team Battle (World 931206).mra" "_Muscle Bomber Duo"
   addgame  "Saturday Night Slam Masters (World 930713).mra" "_Saturday Night Slam Masters"
   addgame  "The Punisher (World 930422).mra" "_The Punisher"
   addgame  "Warriors of Fate (World 921031).mra" "_Warriors of Fate"
fi
exit 0