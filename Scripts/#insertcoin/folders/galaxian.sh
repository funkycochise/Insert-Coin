#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Galaxian (Namco, Set 1).mra")
if [ "$res" == "1" ]; then
   dir=""
   outdir=$1
   add "$dir" "V" "Moon Quasar.mra" "_Moon Quasar"
   add "$dir" "V" "Azurian Attack.mra" "_Galaxian"
   add "$dir" "V" "Black Hole.mra" "_Galaxian"
   add "$dir" "V" "Catacomb.mra" "_Galaxian"
   add "$dir" "V" "Clean Sweep.mra" "_Galaxian"
   add "$dir" "V" "Devil Fish (Galaxian Hardware).mra" "_Galaxian"
   add "$dir" "V" "Galaxian (Namco, Set 1).mra" "_Galaxian"
   add "$dir" "V" "King and Balloon (Japan).mra" "_Galaxian"
   add "$dir" "V" "King and Balloon (US).mra" "_Galaxian"
   add "$dir" "V" "Lucky Today.mra" "_Galaxian"
   add "$dir" "V" "Moon Cresta (Galaxian Hardware) [bl].mra" "_Galaxian"
   add "$dir" "V" "Mr. Do Nightmare.mra" "_Galaxian"
   add "$dir" "V" "Omega [bl].mra" "_Galaxian"
   add "$dir" "V" "Orbitron.mra" "_Galaxian"
   add "$dir" "V" "Pisces.mra" "_Galaxian"
   add "$dir" "V" "Portman (Galaxian Hardware).mra" "_Portman"
   add "$dir" "V" "UniWar S.mra" "_Galaxian"
   add "$dir" "V" "Victory.mra" "_Galaxian"
   add "$dir" "V" "War of the Bugs.mra" "_Galaxian"
   altclean "_Galaxian"
   dot
fi