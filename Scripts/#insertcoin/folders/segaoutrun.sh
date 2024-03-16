#!/bin/bash  
source ./folders/functions.sh

dir="_Sega-Outrun"
outdir=$1
horizontal=$2
vertical=$3
stg_horizontal=$4
stg_vertical=$5

add "$dir" "H" "Super Hang-On (sitdown-upright) (unprotected).mra" "_Super Hang-On"
add "$dir" "H" "Out Run (sitdown-upright, Rev B).mra" "_Out Run"
add "$dir" "H" "Turbo Out Run (Out Run upgrade) (FD1094 317-0118).mra" "_Turbo Out Run"
dot