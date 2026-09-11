#!/bin/bash  
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$taitof3
else
   dir=$taito
fi

resh=$(exist "Liquid Kids (World).mra")
resv=$(exist "Gun & Frontier (World).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then  

   add "$dir" "V" "Gekirindan.mra" "_Gekirindan" "" "STG"
   add "$dir" "V" "Twin Cobra II.mra" "_Twin Cobra II" "" "STG"

   add "$dir" "H" "Arabian Magic.mra" "_Arabian Magic" "" "BEA"
   add "$dir" "H" "Arkanoid Returns.mra" "_Arkanoid Returns" "" ""
   add "$dir" "H" "Bubble Bobble II.mra" "_Bubble Bobble II" "" "ACT"
   add "$dir" "H" "Bubble Memories.mra" "_Bubble Memories" "" "ACT"
   add "$dir" "H" "Cleopatra Fortune.mra" "_Cleopatra Fortune" "" "PUZ"
   add "$dir" "H" "Command War.mra" "_Command War" "" ""
   add "$dir" "H" "Dan-Ku-Ga.mra" "_Dan-Ku-Ga" "" "VSF"
   add "$dir" "H" "Darius Gaiden" "_Darius Gaiden" "" "STG"

   add "$dir" "H" "Elevator Action Returns.mra" "_Elevator Action Returns" "" "ACT"
   add "$dir" "H" "Grid Seeker.mra" "_Grid Seeker" "" ""
   add "$dir" "H" "Gunlock.mra" "_Ray Force" "" ""
   add "$dir" "H" "International Cup 94.mra" "_International Cup 94" "" "SPO"
   add "$dir" "H" "Kaiser Knuckle.mra" "_Kaiser Knuckle" "" "BEA"
   add "$dir" "H" "Land Maker.mra" "_Land Maker" "" ""
   add "$dir" "H" "Light Bringer.mra" "_Light Bringer" "" ""
   add "$dir" "H" "Pop 'n Pop.mra" "_Pop 'n Pop" "" "PUZ"
   add "$dir" "H" "Puchi Carat.mra" "_Puchi Carat" "" ""
   add "$dir" "H" "Puzzle Bobble 2.mra" "_Puzzle Bobble 2" "" "PUZ"
   add "$dir" "H" "Puzzle Bobble 3.mra" "_Puzzle Bobble 3" "" "PUZ"
   add "$dir" "H" "Puzzle Bobble 4.mra" "_Puzzle Bobble 4" "" "PUZ"
   add "$dir" "H" "Quiz de Hyuuhyuu.mra" "_Quiz de Hyuuhyuu" "" ""
   add "$dir" "H" "Quiz Theater.mra" "_Quiz Theater" "" ""
   add "$dir" "H" "Ray Force.mra" "_Ray Force" "" "STG"
   add "$dir" "H" "Recalhorn.mra" "_Recalhorn" "" ""
   add "$dir" "H" "Riding Fight.mra" "_Riding Fight" "" ""
   add "$dir" "H" "Ring Rage.mra" "_Ring Rage" "" ""
   add "$dir" "H" "Space Invaders '95.mra" "_Space Invaders '95" "" "STG"
   add "$dir" "H" "Super Cup Finals.mra" "_Super Cup Finals" "" ""
   add "$dir" "H" "Taito Cup Finals.mra" "_Taito Cup Finals" "" ""
   add "$dir" "H" "Taito Power Goal.mra" "_Taito Power Goal" "" "SPO"
   add "$dir" "H" "Top Ranking Stars.mra" "_Top Ranking Stars" "" ""
   add "$dir" "H" "Twin Qix.mra" "_Twin Qix" "" ""

  dot
fi
