#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep si $names)
else
   si="_Space Invaders"
fi
dir=$si

resv=$(exist "Space Invaders.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   dir=""
   outdir=$1

   add "$dir" "V" "280Z-ZZAP (US).mra" "_Space Invaders"
   add "$dir" "V" "Amazing Maze.mra" "_Space Invaders"
   add "$dir" "V" "Attack Force.mra" "_Space Invaders"
   add "$dir" "V" "Balloon Bomber.mra" "_Space Invaders"
   add "$dir" "V" "Blue Shark.mra" "_Space Invaders"
   add "$dir" "V" "Boot Hill.mra" "_Space Invaders"
   add "$dir" "V" "Clowns.mra" "_Space Invaders"
   add "$dir" "V" "Cosmo.mra" "_Space Invaders"
   add "$dir" "V" "Galaxy Wars (Universal, Set 1).mra" "_Space Invaders"
   add "$dir" "V" "Gun Fight.mra" "_Space Invaders"
   add "$dir" "V" "Laguna Racer.mra" "_Space Invaders"
   add "$dir" "V" "Lunar Rescue.mra" "_Space Invaders"
   add "$dir" "V" "Lupin III (Set 2).mra" "_Space Invaders"
   add "$dir" "V" "Sea Wolf (Set 1).mra" "_Space Invaders"
   add "$dir" "V" "Shuffleboard.mra" "_Space Invaders"
#   add "$dir" "V" "Shuttle Invader.mra" "_Space Invaders"
   add "$dir" "V" "Space Chaser.mra" "_Space Invaders"
   add "$dir" "V" "Space Encounters.mra" "_Space Invaders"
   add "$dir" "V" "Space Invaders Part II (Taito, Bigger ROMs).mra" "_Space Invaders"
   add "$dir" "V" "Space Invaders.mra" "_Space Invaders"
   add "$dir" "V" "Vortex.mra" "_Space Invaders"
   altclean "_Space Invaders"
   dot
fi