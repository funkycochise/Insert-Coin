#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Galaxian (Namco, Set 1).mra")
if [ "$res" == "1" ]; then
   dir="_Galaxian"
   outdir=$1
   add "$dir" "V" "Moon Quasar.mra" "_Moon Quasar"
   add "$dir" "V" "Azurian Attack.mra" "_Azurian Attack"
   add "$dir" "V" "Black Hole.mra" "_Black Hole"
   add "$dir" "V" "Catacomb.mra" "_Catacomb"
   add "$dir" "V" "Clean Sweep.mra" "_Clean Sweep"
   add "$dir" "V" "Devil Fish (Galaxian Hardware).mra" "_Devil Fish"
   add "$dir" "V" "Galaxian (Namco, Set 1).mra" "_Galaxian"
   add "$dir" "V" "King and Balloon (Japan).mra" "_King and Balloon"
   add "$dir" "V" "King and Balloon (US).mra" "_King and Balloon"
   add "$dir" "V" "Lucky Today.mra" "_Lucky Today"
   add "$dir" "V" "Moon Cresta (Galaxian Hardware) [bl].mra" "_Moon Cresta"
   add "$dir" "V" "Mr. Do Nightmare.mra" "_Mr. Do Nightmare"
   add "$dir" "V" "Omega [bl].mra" "_Galaxian"
   add "$dir" "V" "Orbitron.mra" "_Omega"
   add "$dir" "V" "Pisces.mra" "_Pisces"
   add "$dir" "V" "Portman (Galaxian Hardware).mra" "_Portman"
   add "$dir" "V" "UniWar S.mra" "_UniWar S"
   add "$dir" "V" "Victory.mra" "_Victory"
   add "$dir" "V" "War of the Bugs.mra" "_War of the Bugs"
   altclean "_Galaxian"
   dot
fi