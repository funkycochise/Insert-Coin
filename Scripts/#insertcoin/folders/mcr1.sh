 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_MCR1"

cd $OutputRoot

create "$MainDir"

addgame "Kick.mra" "_Kick"
addgame "Kick-Man.mra" "_Kick-Man"
addgame "Solar Fox.mra" "_Solar Fox"

exit 0