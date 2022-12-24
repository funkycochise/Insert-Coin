 #!/bin/bash  
#exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null 

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Irem M72 Hardware"
RegSourceRoot=/media/fat/_Arcade
ALT=/media/fat/_Arcade/_alternatives

cd $OutputRoot

create "$MainDir"

orientation=$2

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame "Air Duel (Japan, M72 hardware).mra" "_Air Duel"
   addgame "Air Duel (World, M72 hardware).mra" "_Air Duel"
   addgame "Image Fight (Japan).mra" "_Image Fight"
   addgame "Image Fight (World).mra" "_Image Fight"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Daiku no Gensan (Japan, M72 hardware).mra" "_Hammerin' Harry"
   addgame "Daiku no Gensan (Japan, M84 hardware).mra" "_Hammerin' Harry"
   addgame "Dragon Breed (Japan, M72 hardware).mra" "_Dragon Breed"
   addgame "Gallop - Armed Police Unit (Japan, M72 hardware).mra" "_Gallop"
   addgame "Hammerin' Harry (US, M84 hardware).mra" "_Hammerin' Harry"
   addgame "Legend of Hero Tonma (Japan).mra" "_Legend of Hero Tonma"
   addgame "Mr. HELI no Daibouken (Japan).mra" "_Mr. HELI no Daibouken"
   addgame "Ninja Spirit (Japan).mra" "_Ninja Spirit"
   addgame "R-Type (Japan).mra" "_R-Type"
   addgame "R-Type (World).mra" "_R-Type"
   addgame "R-Type II (Japan).mra" "_R-Type II"
   addgame "R-Type II (World).mra" "_R-Type II"
   addgame "X Multiply (Japan, M72 hardware).mra" "_X Multiply"
fi


exit 0
