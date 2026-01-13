#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep snk $names)
else
   snk="_SNK"
fi
dir=$snk

resh=$(exist "P.O.W. - Prisoners of War (US Version 1).mra")
resv=$(exist "Ikari Warriors.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "ASO.mra" "_ASO"
   add "$dir" "V" "Fighting Golf.mra" "_Fighting Golf"
   add "$dir" "V" "Ikari Warriors.mra" "_Ikari Warriors" "" "RNG"
   add "$dir" "V" "Paddle Mania.mra" "_Paddle Mania"
   add "$dir" "V" "SAR - Search And Rescue (World).mra" "_S.A.R. - Search and Rescue" "" "RNG"
   add "$dir" "V" "Sky Soldiers (US).mra" "_Sky Soldiers"
   add "$dir" "V" "The Next Space (Japan).mra" "_The Next Space"
   add "$dir" "V" "Time Soldiers (US Rev 3).mra" "_Time Soldiers"
   add "$dir" "V" "TNKIII.mra" "_TNKIII"
   add "$dir" "V" "Victory Road.mra" "_Victory Road" "" "RNG"

   add "$dir" "H" "Athena.mra" "_Athena"
   add "$dir" "H" "Country Club.mra" "_CountryClub"
   add "$dir" "H" "Prehistoric Isle in 1930 (World).mra" "_Prehistoric Isle in 1930" "" "STG"
   add "$dir" "H" "Street Smart (US Version 2).mra" "_Street Smart"
   add "$dir" "H" "P.O.W. - Prisoners of War (US Version 1).mra" "_P.O.W. - Prisoners of War" "" "BEA"
   add "$dir" "H" "Ikari III - The Rescue (World Version 1, 8-Way Joystick).mra" "_Ikari III - The Rescue" "" "RNG"
   dot
fi