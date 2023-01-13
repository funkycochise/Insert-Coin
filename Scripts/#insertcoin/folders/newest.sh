#!/bin/bash
#exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null 

source ./folders/functions.sh

OutputRoot=$1
RegSourceRoot=/media/fat/_Arcade
ALT=/media/fat/_Arcade/_alternatives

#echo "OutputRoot : $OutputRoot"
MainDir="__Newest"

cd $OutputRoot

rm -r "/media/fat/_Arcade/$OutputRoot/$MainDir"
create "$MainDir"

function add {

if  test -f "$RegSourceRoot/$1" ; then
  linkfolder "$2"
fi

}

counter=0

function linkfolder {
   counter=$((counter+1))
   if [[ "$counter" -lt 21 ]]; then
      #special_echo "$counter - $1"
      formated=$(printf "%02d" $counter)
      ln -s "$ALT/$1"  "$OutputRoot/$MainDir/_$formated$1"
   fi
}


#0113
add "Karnov (US, rev 6).mra" "_Karnov"

#0106
add "Extermination (World).mra" "_Extermination"

#1228
add "Tiger Heli Bootleg.mra" "_Tiger Heli"

#1227
add "SlapFight Bootleg.mra" "_SlapFight"

#1225
add "Pipi & Bibis - Whoopee!! (Z80 sound cpu, set 1).mra" "_Pipi & Bibis"

#1223
add "Chelnov - Atomic Runner (World).mra" "_Chelnov"
add "Karnov (US, rev 6).mra" "_Karnov"
add "Sky Soldiers (US).mra" "_Sky Soldiers"
add "Time Soldiers (US Rev 3).mra" "_Time Soldiers"

#1216
add "Kageki (World).mra" "_Kageki"

#1209
add "Insector X (World).mra" "_Insector X"

#1201
add "Peter Pack Rat.mra" "_Peter Pack Rat"

#1124
add "XSleenaBA.mra" "_Xain'd Sleena"

#1119
add "Crystal Castles.mra" "_Crystal Castles"

#1118
add "Turbo Out Run (Out Run upgrade) (FD1094 317-0118).mra" "_Turbo Out Run"

#1118
add "Gang Wars.mra" "_Gang Wars"

#1118
add "Sky Adventure (World).mra" "_Sky Adventure"

#1117
add "Express Raider.mra" "_Express Raider"

#1114
add "Congo Bongo.mra" "_Congo Bongo"

#1113
add "Bosconian - Star Destroyer (new version).mra" "_Bosconian"

#1113
add "Tropical Angel.mra" "_Tropical Angel"

#1111
add "Exerion (Jaleco).mra" "_Exerion"

#1109
add "SonSon.mra" "_SonSon"

#1105
add "Out Run (sitdown-upright, Rev B).mra" "_Out Run"

#1010
add "Nova 2001.mra" "_Nova 2001"

#0810
add "Raiders5.mra" "_Raiders5"

#0510
add "BankPanic.mra" "_BankPanic"

#0110
add "Super Hang-On (sitdown-upright) (unprotected).mra" "_Super Hang-On"

#2909
add "P.O.W. - Prisoners of War (US Version 1).mra" "_P.O.W. - Prisoners of War"

#2909
add "Ikari III - The Rescue (World Version 1, 8-Way Joystick).mra" "_Ikari III - The Rescue"

#2509
add "Street Smart (US Version 2).mra" "_Street Smart"

#2509
add "SAR - Search And Rescue (World).mra" "_S.A.R. - Search and Rescue"

#1409
add "Cosmo Police Galivan (12-26-1985).mra" "_Galivan"

#1009
add "Ufo Robo Dangar (4-07-1987).mra" "_Ufo Robo Dangar"

#1009
add "Karate Champ (US).mra" "_Karate Champ"

#1009
linkfolder "_R-Type II"
#0509
linkfolder "_Snow Bros. 2"
#0109
linkfolder "_Hammerin' Harry"
0109
linkfolder "_Final Fight AE"
#3008
linkfolder "_Air Duel"
#3008
linkfolder "_X Multiply"
#2708
add "Prehistoric Isle in 1930 (World).mra" "_Prehistoric Isle in 1930"

#2508
linkfolder "_Mr. HELI no Daibouken"
#2508
linkfolder "_Legend of Hero Tonma"
#2508
linkfolder "_Dragon Breed"

#2208
add ""$RegSourceRoot/chameleon.mra" "_Chameleon"

#1608
linkfolder "_Gallop"
#1608
linkfolder "_Image Fight"
#1608
linkfolder "_Ninja Spirit"
#2407
#linkfolder "_R-Type"
#0207
add "Psychic 5 (World).mra" "_Psychic 5"

exit 0
