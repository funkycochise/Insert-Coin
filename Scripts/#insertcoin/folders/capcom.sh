 #!/bin/bash  
exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

source ./folders/functions.sh

echo "alt : $AltSourceRoot" >/dev/null

OutputRoot=$1

#special_echo "capcom OutputRoot : $OutputRoot"

MainDir="_Capcom-Mitchell"

cd $OutputRoot

create "$MainDir"

orientation=$2

#special_echo "maindir: $2"

if [ -z "$orientation" ] || [ "$orientation" = "V" ];
then
   #special_echo "\$orientation is empty or V"
   addgame  "1942 (Revision B).mra" "_1942"
   addgame  "1943 Kai Midway Kaisen (Japan).mra" "_1943"
   addgame  "1943 The Battle of Midway Mark II (US).mra" "_1943"
   addgame  "1943 The Battle of Midway (Euro).mra" "_1943"
   addgame  "Block Block (World 911219 Joystick).mra" "_Block Block"
   addgame  "Commando (World).mra" "_Commando"
   addgame  "Exed Exes.mra" "_Exed Exes"
   addgame  "Gun.Smoke (World, 1985-11-15).mra" "_Gun.Smoke"
   addgame  "Legendary Wings.mra" "_Legendary Wings"
   addgame  "The Speed Rumbler (set 1).mra" "_The Speed Rumbler"
   addgame  "Vulgus (set 1).mra" "_Vulgus"
   addgame  "SonSon.mra" "_SonSon"
fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame  "Bionic Commando (Euro).mra" "_Bionic Commando"
   addgame  "Black Tiger.mra" "_Black Tiger"
   addgame  "Capcom World (Japan).mra" "_Capcom World"
   addgame  "Dokaben (Japan).mra" "_Dokaben"
   addgame  "F-1 Dream.mra" "_F-1 Dream"
   addgame  "Ghosts'n Goblins (World Set 1).mra" "_Ghosts'n Goblins"
   addgame  "Pang (World).mra" "_Pang"
   addgame  "Pirate Ship Higemaru.mra" "_Pirate Ship Higemaru"
   #addgame  "Savage Bees.mra" "_Exed Exes"
   addgame  "SectionZ.mra" "_SectionZ"
   addgame  "Side Arms - Hyper Dyne (World, 861129).mra" "_Side Arms"
   addgame  "Street Fighter (US, set 1).mra" "_Street Fighter"
   addgame  "Super Pang (World 900914).mra" "_Super Pang"
   addgame  "Tiger Road (US).mra" "_Tiger Road"
   addgame  "Trojan (Romstar).mra" "_Trojan"
fi




exit 0
