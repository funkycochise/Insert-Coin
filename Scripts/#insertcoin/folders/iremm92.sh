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

MainDir="_Irem M92 Hardware"
RegSourceRoot=/media/fat/_Arcade
ALT=/media/fat/_Arcade/_alternatives

cd $OutputRoot

create "$MainDir"

orientation=$2

#if [ -z "$orientation" ] || [ "$orientation" = "V" ];
#then
#   #special_echo "\$orientation is empty or V"
#fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Blade Master (World).mra" "_Blade Master"
   addgame "Gun Force II (US).mra" "_Gun Force II"
   addgame "Gunforce - Battle Fire Engulfed Terror Island (World).mra" "_Gunforce"
   addgame "Hook (World).mra" "_Hook"
   addgame "In The Hunt (World).mra" "_In The Hunt"
   addgame "Lethal Thunder (World).mra" "_Lethal Thunder"
   addgame "Mystic Riders (World).mra" "_Mystic Riders"
   addgame "Ninja Baseball Bat Man (World).mra" "_Ninja Baseball Bat Man"
   addgame "R-Type Leo (World).mra" "_R-Type Leo"
   addgame "Undercover Cops (World).mra" "_Undercover Cops"
fi


exit 0
