#!/bin/bash  
source ./folders/functions.sh

dir=$gaelco

resh=$(exist "World Rally Championship (set 2).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then  

   add "$dir" "H" "Alligator Hunt.mra" "_Alligator Hunt" "" "ACT"
   add "$dir" "H" "Biomechanical Toy.mra" "_Biomechanical Toy" "" "ACT"
   add "$dir" "H" "Glass.mra" "_Glass" "" ""
   add "$dir" "H" "Squash.mra" "_Squash" "" "SPO"
   add "$dir" "H" "TH Strikes Back.mra" "_TH Strikes Back"
   add "$dir" "H" "Thunder Hoop.mra" "_Thunder Hoop"
   add "$dir" "H" "World Rally Championship (set 2).mra" "_World Rally Championship" "" "SPO"

  dot
fi
