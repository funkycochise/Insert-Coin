#!/bin/bash  
source ./folders/functions.sh

dir="_Sega-System-E"
outdir=$1
horizontal=$2
vertical=$3
stg_horizontal=$4
stg_vertical=$5

add "$dir" "V" "Megumi Rescue (Japan).mra" "_SystemE_Megumi Rescue" "_Megumi Rescue"
add "$dir" "V" "Riddle of Pythagoras (Japan).mra" "_SystemE_Riddle of Pythagoras" "_Riddle of Pythagoras"

add "$dir" "H" "Astro Flash (Japan).mra" "_SystemE_Astro Flash" "_Astro Flash"
add "$dir" "H" "Fantasy Zone II - The Tears of Opa-Opa.mra" "_SystemE_Fantasy Zone 2" "_Fantasy Zone 2"
add "$dir" "H" "Hang On Jr.mra" "_SystemE_Hang On Jr" "_Hang On Jr"
add "$dir" "H" "Opa Opa (Rev A, unprotected).mra" "_SystemE_Opa Opa" "_Opa Opa"
add "$dir" "H" "Opa Opa.mra" "_SystemE_Opa Opa" "_Opa Opa"
add "$dir" "H" "Slap Shooter.mra" "_SystemE_Slap Shooter" "_Slap Shooter"
add "$dir" "H" "Tetris (Japan, System E).mra" "_SystemE_Tetris" "_Tetris" "" "PUZ"

dot