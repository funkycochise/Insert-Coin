#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep scramble $names)
else
   scramble="_Scramble"
fi
dir=$scramble

resv=$(exist "Scramble (Stern, Set 1).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V"  "Amidar (Scramble).mra" "_Amidar"
   add "$dir" "V"  "Anteater.mra" "_Anteater" 
   add "$dir" "V"  "Armored Car.mra" "_Armored Car" 
   add "$dir" "V"  "Battle of Atlantis.mra" "_Battle of Atlantis" 
   add "$dir" "V"  "Calipso.mra" "_Calipso" 
   add "$dir" "V"  "Dark Planet.mra" "_Dark Planet" 
   add "$dir" "V"  "Frogger (Konami Bugfixed).mra" "_Frogger"
   add "$dir" "V"  "Lost Tomb.mra" "_Lost Tomb" 
   add "$dir" "V"  "Mars.mra" "_Marss"
   add "$dir" "V"  "Mighty Monkey (Scramble Hardware) [bl].mra" "_Mighty Monkey"
   add "$dir" "V"  "Minefield.mra" "_Minefield"
   add "$dir" "V"  "Moon War.mra" "_Moon War" 
   add "$dir" "V"  "Rescue.mra" "_Rescue"
   add "$dir" "V"  "Scramble (Stern, Set 1).mra" "_Scramble" 
   add "$dir" "V"  "Speed Coin.mra" "_Speed Coin"
   add "$dir" "V"  "Strategy X.mra" "_Strategy X"
   add "$dir" "V"  "Super Cobra.mra" "_Super Cobra" 
   add "$dir" "V"  "Tazz-Mania (Set 1).mra" "_Tazz-Mania"
   add "$dir" "V"  "The End.mra" "_The End" 
   add "$dir" "V"  "Turtles.mra" "_Turtles"
   altclean "_Scramble"
   dot
fi