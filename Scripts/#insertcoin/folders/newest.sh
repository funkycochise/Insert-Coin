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

counter=0

function linkfolder {
   counter=$((counter+1))
   if [[ "$counter" -lt 17 ]]; then
      #special_echo "$counter - $1"
      formated=$(printf "%02d" $counter)
      ln -s "$ALT/$1"  "$OutputRoot/$MainDir/_$formated$1"
   fi
}

#1223
if  test -f "$RegSourceRoot/Chelnov - Atomic Runner (World).mra" ; then
  linkfolder "_Chelnov"
fi
#if  test -f "$RegSourceRoot/Karnov (US, rev 6).mra" ; then
#  linkfolder "_Karnov"
#fi
if  test -f "$RegSourceRoot/Sky Soldiers (US).mra" ; then
  linkfolder "_Sky Soldiers"
fi
if  test -f "$RegSourceRoot/Time Soldiers (US Rev 3).mra" ; then
  linkfolder "_Time Soldiers"
fi

#1216
if  test -f "$RegSourceRoot/Kageki (World).mra" ; then
  linkfolder "_Kageki"
fi

#1209
if  test -f "$RegSourceRoot/Insector X (World).mra" ; then
  linkfolder "_Insector X"
fi

#1201
if  test -f "$RegSourceRoot/Peter Pack Rat.mra" ; then
  linkfolder "_Peter Pack Rat"
fi

#1124
if  test -f "$RegSourceRoot/XSleenaBA.mra" ; then
  linkfolder "_Xain'd Sleena"
fi

#1119
if  test -f "$RegSourceRoot/Crystal Castles.mra" ; then
  linkfolder "_Crystal Castles"
fi

#1118
if  test -f "$RegSourceRoot/Turbo Out Run (Out Run upgrade) (FD1094 317-0118).mra" ; then
  linkfolder "_Turbo Out Run"
fi

#1118
if  test -f "$RegSourceRoot/Gang Wars.mra" ; then
  linkfolder "_Gang Wars"
fi

#1118
if  test -f "$RegSourceRoot/Sky Adventure (World).mra" ; then
  linkfolder "_Sky Adventure"
fi

#1117
if  test -f "$RegSourceRoot/Express Raider.mra" ; then
  linkfolder "_Express Raider"
fi

#1114
if  test -f "$RegSourceRoot/Congo Bongo.mra" ; then
  linkfolder "_Congo Bongo"
fi

#1113
if  test -f "$RegSourceRoot/Bosconian - Star Destroyer (new version).mra"; then
  linkfolder "_Bosconian"
fi

#1113
if  test -f "$RegSourceRoot/Tropical Angel.mra"; then
  linkfolder "_Tropical Angel"
fi

#1111
if  test -f "$RegSourceRoot/Exerion (Jaleco).mra"; then
  linkfolder "_Exerion"
fi

#1109
if  test -f "$RegSourceRoot/SonSon.mra"; then
  linkfolder "_SonSon"
fi

#1105
if  test -f "$RegSourceRoot/Out Run (sitdown-upright, Rev B).mra"; then
  linkfolder "_Out Run"
fi

#1010
if  test -f "$RegSourceRoot/Nova 2001.mra"; then
  linkfolder "_Nova 2001"
fi

#0810
if  test -f "$RegSourceRoot/Raiders5.mra"; then
  linkfolder "_Raiders5"
fi

#0510
if  test -f "$RegSourceRoot/BankPanic.mra"; then
  linkfolder "_BankPanic"
fi

#0110
if  test -f "$RegSourceRoot/Super Hang-On (sitdown-upright) (unprotected).mra"; then
  linkfolder "_Super Hang-On"
fi

#2909
if  test -f "$RegSourceRoot/P.O.W. - Prisoners of War (US Version 1).mra"; then
  linkfolder "_P.O.W. - Prisoners of War"
fi

#2909
if  test -f "$RegSourceRoot/Ikari III - The Rescue (World Version 1, 8-Way Joystick).mra"; then
  linkfolder "_Ikari III - The Rescue"
fi

#2509
if  test -f "$RegSourceRoot/Street Smart (US Version 2).mra"; then
  linkfolder "_Street Smart"
fi
#2509
if  test -f "$RegSourceRoot/SAR - Search And Rescue (World).mra"; then
  linkfolder "_S.A.R. - Search and Rescue"
fi

#1409
if  test -f "$RegSourceRoot/Cosmo Police Galivan (12-26-1985).mra"; then
  linkfolder "_Galivan"
fi
#1009
if  test -f "$RegSourceRoot/Ufo Robo Dangar (4-07-1987).mra"; then
  linkfolder "_Ufo Robo Dangar"
fi

#1009
if  test -f "$RegSourceRoot/Karate Champ (US).mra"; then
  linkfolder "_Karate Champ"
fi
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
if  test -f "$RegSourceRoot/Prehistoric Isle in 1930 (World).mra"; then
   linkfolder "_Prehistoric Isle in 1930"
fi
#2508
linkfolder "_Mr. HELI no Daibouken"
#2508
linkfolder "_Legend of Hero Tonma"
#2508
linkfolder "_Dragon Breed"

#2208
if  test -f "$RegSourceRoot/chameleon.mra"; then
  linkfolder "_Chameleon"
fi
#1608
linkfolder "_Gallop"
#1608
linkfolder "_Image Fight"
#1608
linkfolder "_Ninja Spirit"
#2407
#linkfolder "_R-Type"
#0207
if  test -f "$RegSourceRoot/Psychic 5 (World).mra"; then
  linkfolder "_Psychic 5"
fi



exit 0
