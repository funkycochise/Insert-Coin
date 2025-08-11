#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep namco $names)
else
   namco="_Namco"
fi
dir=$namco

resh=$(exist "Pac-Land (World).mra")
resv=$(exist "_Gaplus")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V"  "Dig Dug (Rev 2).mra" "_Dig Dug" "" "ACT"
   add "$dir" "V"  "Dig Dug II (New Ver).mra" "_Dig Dug II" "" "ACT"
   add "$dir" "V"  "Galaga (Midway, Set 1).mra" "_Galaga" "" "STG"
   rep "$dir" "V" "_Gaplus"  "_Gaplus" "" "STG"

   add "$dir" "V"  "Galaga (Midway, Set 1).mra" "_Galaga" "" "STG"
   add "$dir" "V"  "Galaxian (Namco, Set 1).mra" "_Galaxian" "" "STG"
   add "$dir" "V"  "Grobda (W, New Ver.).mra" "_Grobda" "" "ACT"
   add "$dir" "V"  "King and Balloon (US).mra" "_King And Balloon"
   add "$dir" "V"  "Mappy (US).mra" "_Mappy" "" "ACT"
   add "$dir" "V"  "Motos.mra" "_Motos" "" "ACT"
   add "$dir" "V"  "Ms. Pac-Man.mra" "_Ms.Pacman" "" "ACT"
   add "$dir" "V"  "New Rally-X.mra" "_RallyX" "" "ACT"
   add "$dir" "V"  "Pac & Pal.mra" "_Pac & Pal" "" "ACT"
   add "$dir" "V"  "Puck Man (JP, Set 1).mra" "_Pac-Man" "" "ACT"
   add "$dir" "V"  "Rally-X (32k Ver).mra" "_RallyX" "" "ACT"
   add "$dir" "V"  "Super Pac-Man.mra" "_Super Pacman" "" "ACT"
   add "$dir" "V"  "Super Xevious.mra" "_Xevious" "" "STG"
   add "$dir" "V"  "TankBattalion.mra" "_TankBattalion" "" "ACT"
   add "$dir" "V"  "The Tower of Druaga.mra" "_The Tower of Druaga"
   add "$dir" "V"  "Xevious.mra" "_Xevious" "" "STG"

   add "$dir" "H"  "Bosconian - Star Destroyer (new version).mra" "_Bosconian" "" "STG"
   add "$dir" "H"  "Metro-Cross (set 1).mra" "_Metro-Cross" "" "ACT"
   add "$dir" "H"  "Pac-Land (World).mra" "_Pac-Land" "" "ACT"

   dot
fi
