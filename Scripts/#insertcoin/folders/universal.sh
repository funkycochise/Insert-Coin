#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "Mr. Do!.mra")
if [ "$res" == "1" ]; then
   dir="_Universal"
   outdir=$1

   add "$dir" "V" "Cosmic Alien.mra" "_Cosmic Alien"
   add "$dir" "V" "Cosmic Guerilla.mra" "_Cosmic Guerilla"
   add "$dir" "V" "Devil Zone.mra" "_Devil Zone"
   add "$dir" "V" "Galaxy Wars (Universal, Set 1).mra" "_Galaxy Wars"
   add "$dir" "V" "Lady Bug.mra" "_Lady Bug"
   add "$dir" "V" "Magical Spot.mra" "_Magical Spot"
   add "$dir" "V" "Mr. Do! Fixed.mra" "_Mr. Do!" "" "ACT"
   add "$dir" "V" "Mr. Do!.mra" "_Mr. Do!" "" "ACT"
   add "$dir" "V" "No Mans Land.mra" "_No Mans Land"
   add "$dir" "V" "Space Panic.mra" "_Space Panic"

   add "$dir" "H" "Snap Jack.mra" "_Snap Jack" "" "ACT"
   dot
fi