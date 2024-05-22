#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Scramble (Stern, Set 1).mra")
if [ "$res" == "1" ]; then
   dir=""
   outdir=$1

   add "$dir" "V"  "Amidar (Scramble).mra" "_Scramble"
   add "$dir" "V"  "Anteater.mra" "_Scramble" 
   add "$dir" "V"  "Armored Car.mra" "_Scramble" 
   add "$dir" "V"  "Battle of Atlantis.mra" "_Scramble" 
   add "$dir" "V"  "Calipso.mra" "_Scramble" 
   add "$dir" "V"  "Dark Planet.mra" "_Scramble" 
   add "$dir" "V"  "Frogger (Konami Bugfixed).mra" "_Scramble"
   add "$dir" "V"  "Frogger (Sega, Set 2).mra" "_Scramble"
   add "$dir" "V"  "Lost Tomb.mra" "_Scramble" 
   add "$dir" "V"  "Mars.mra" "_Scramble"
   add "$dir" "V"  "Mighty Monkey (Scramble Hardware) [bl].mra" "_Scramble"
   add "$dir" "V"  "Minefield.mra" "_Scramble"
   add "$dir" "V"  "Moon War.mra" "_Scramble" 
   add "$dir" "V"  "Rescue.mra" "_Scramble"
   add "$dir" "V"  "Scramble (Stern, Set 1).mra" "_Scramble" 
   add "$dir" "V"  "Speed Coin.mra" "_Scramble"
   add "$dir" "V"  "Strategy X.mra" "_Scramble"
   add "$dir" "V"  "Super Cobra.mra" "_Scramble" 
   add "$dir" "V"  "Tazz-Mania (Set 1).mra" "_Scramble"
   add "$dir" "V"  "The End.mra" "_Scramble" 
   add "$dir" "V"  "Turtles.mra" "_Scramble"
   dot
fi