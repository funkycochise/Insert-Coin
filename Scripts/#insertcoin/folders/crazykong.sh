 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

#MainDir="_Crazy Kong"

cd $OutputRoot

#create "$MainDir"
orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   addgame "Big Kong.mra" "_Crazy Kong"
   addgame "Crazy Kong (Orca bootleg).mra" "_Crazy Kong"
   addgame "Crazy Kong Part II (Set 1).mra" "_Crazy Kong"
   addgame "Donkey Kong (Spanish Crazy Kong bootleg).mra" "_Crazy Kong"
fi
#if [ -z "$orientation" ] || [ "$orientation" = "H" ];
#then
#   special_echo "\$orientation is empty or H"
#fi
exit 0