#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Galaga 3 (GP3 Rev D).mra")
if [ "$res" == "1" ]; then
   dir="_Namco"
   outdir=$1
   add "$dir" "V"  "Dig Dug (Rev 2).mra" "_Dig Dug" "" "ACT"
   add "$dir" "V"  "Dig Dug II (New Ver).mra" "_Dig Dug II" "" "ACT"
   add "$dir" "V"  "Galaga (Midway, Set 1).mra" "_Galaga" "" "STG"
   add "$dir" "V"  "Galaga 3 (GP3 Rev D).mra" "_Gaplus" "" "STG"
   add "$dir" "V"  "Galaga (Midway, Set 1).mra" "_Galaga" "" "STG"
   add "$dir" "V"  "Galaxian (Namco, Set 1).mra" "_Galaxian" "" "STG"
   add "$dir" "V"  "Gaplus (GP2 Rev B).mra" "_Gaplus" "" "STG"
   add "$dir" "V"  "Grobda (W, New Ver.).mra" "_Grobda" "" "ACT"
   add "$dir" "V"  "King and Balloon (Japan).mra" "_King And Balloon"
   add "$dir" "V"  "King and Balloon (US).mra" "_King And Balloon"
   add "$dir" "V"  "Mappy (US).mra" "_Mappy" "" "ACT"
   add "$dir" "V"  "Motos.mra" "_Motos" "" "ACT"
   add "$dir" "V"  "Ms. Pac-Man.mra" "_Ms.Pacman" "" "ACT"
   add "$dir" "V"  "New Rally-X.mra" "_RallyX" "" "ACT"
   add "$dir" "V"  "Pac & Pal.mra" "_Pac & Pal" "" "ACT"
   add "$dir" "V"  "Pac-Man & Chomp Chomp.mra" "_Pac & Pal" "" "ACT"
   add "$dir" "V"  "Puck Man (JP, Set 1).mra" "_Pacman" "" "ACT"
   add "$dir" "V"  "Rally-X (32k Ver).mra" "_RallyX" "" "ACT"
   add "$dir" "V"  "Super Pac-Man.mra" "_Super Pacman" "" "ACT"
   add "$dir" "V"  "Super Xevious.mra" "_Xevious" "" "STG"
   add "$dir" "V"  "TankBattalion.mra" "_TankBattalion" "" "ACT"
   add "$dir" "V"  "The Tower of Druaga.mra" "_The Tower of Druaga"
   add "$dir" "V"  "Xevious.mra" "_Xevious" "" "STG"

   add "$dir" "H"  "Bosconian - Star Destroyer (new version).mra" "_Bosconian" "" "STG"
   add "$dir" "H"  "Splatter House (World, new version (SH3)).mra" "_Splatter House" "" "ACT"

   dot
fi