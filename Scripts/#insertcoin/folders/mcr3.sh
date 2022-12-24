 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_MCR3"

cd $OutputRoot

create "$MainDir"

addgame "Discs of Tron.mra" "_Disc of Tron"
addgame "Journey.mra" "_Journey"
addgame "Tapper.mra" "_Tapper"
addgame "Tapper (Budweiser, 840127).mra" "_Tapper"
addgame "Timber.mra" "_Timber"

exit 0