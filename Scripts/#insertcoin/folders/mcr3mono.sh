 #!/bin/bash  

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_MCR3Mono"

cd $OutputRoot

create "$MainDir"

addgame "Demolition Derby (MCR-3 Mono Board Version).mra" "_Demolition Derby"
addgame "Demolition Derby.mra" "_Demolition Derby"
addgame "Max RPM (v2).mra" "_Max RPM"
addgame "Max RPM.mra" "_Max RPM"
addgame "Power Drive.mra" "_Power Drive"
addgame "Rampage (Rev 3, 860827).mra" "_Rampage"
addgame "Rampage.mra" "_Rampage"
addgame "Sarge.mra" "_Sarge"
addgame "Star Guards.mra" "_Star Guards"

exit 0