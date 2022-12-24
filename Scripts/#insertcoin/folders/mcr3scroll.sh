 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_MCR3Scroll"

cd $OutputRoot

create "$MainDir"

addgame "Crater Raider.mra" "_Crater Raider"
addgame "Spy Hunter.mra" "_Spy Hunter"
addgame "Turbo Tag (Prototype).mra" "_Turbo Tag"
addgame "Turbo Tag.mra" "_Turbo Tag"

exit 0