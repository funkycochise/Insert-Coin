 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_MCR2"

cd $OutputRoot

create "$MainDir"

addgame "Domino Man.mra" "_Domino Man"
addgame "Kozmik Krooz'r.mra" "_Kozmik Kroozr"
addgame "Satan's Hollow (Set 1).mra" "_Satan's Hollow"
addgame "Satans Hollow.mra" "_Satan's Hollow"
addgame "Tron.mra" "_Tron"
addgame "Two Tigers (Tron Conversion).mra" "_Two Tigers"
addgame "Two Tigers.mra" "_Two Tigers"
addgame "Wacko.mra" "_Wacko"

exit 0