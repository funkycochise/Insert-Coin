#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Pac-Man (Midway).mra")
if [ "$res" == "1" ]; then
   dir="_Pacman"
   outdir=$1

   add "$dir" "V"  "Ali Baba and 40 Thieves.mra" "_Pacman"
   add "$dir" "V"  "Beastie Feastie (Pac-Man Conversion).mra" "_Beastie Feastie"
   add "$dir" "V"  "Birdiy.mra" "_Birdiy"
   add "$dir" "V"  "Crazy Otto.mra" "_Pacman"
   add "$dir" "V"  "Crush Roller (Set 2).mra" "_Crush Roller"
   add "$dir" "V"  "Dream Shopper.mra" "_Dream Shopper"
   add "$dir" "V"  "Eeek! (Pac-Man Conversion).mra" "_Eeek!"
   add "$dir" "V"  "Eggor.mra" "_Eggor"
   add "$dir" "V"  "Eyes (US, Set 1).mra" "_Eyes"
   add "$dir" "V"  "Gorkans.mra" "_Gorkans"
   add "$dir" "V"  "Jump Shot.mra" "_Pacman"
   add "$dir" "V"  "Lizard Wizard.mra" "_Lizard Wizard"
   add "$dir" "V"  "Mr. TNT.mra" "_Pacman"
   add "$dir" "V"  "Ms. Pac-Man.mra" "_Ms. Pac-Man"
   add "$dir" "V"  "Pac-Man (Midway).mra" "_Pacman"
   add "$dir" "V"  "Pac-Man Club- Club Lambada (AR).mra" "_Pacman"
   add "$dir" "V"  "Pac-Man Plus.mra" "_Pac-Man Plus"
   add "$dir" "V"  "Pac-Manic Miner.mra" "_Pac-Manic Miner"
   add "$dir" "V"  "Pollen Angel.mra" "_Pollen Angel"
   add "$dir" "V"  "Ponpoko.mra" "_Ponpoko"
   add "$dir" "V"  "Puck Man (JP, Set 1).mra" "_Pacman"
   add "$dir" "V"  "Super Glob (Pac-Man, German) [bl].mra" "_Super Glob"
   add "$dir" "V"  "The Glob (Pac-Man Hardware).mra" "_The Glob"
   add "$dir" "V"  "Van-Van Car.mra" "_Van-Van Car"
   add "$dir" "V"  "Woodpecker (Set 1).mra" "_Woodpecker"
   altclean "_Pacman"
   dot
fi
