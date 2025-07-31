#!/bin/bash
source ./folders/functions.sh
loadsetup
dir="_Sega-Outrun"
if [ "$merge_system" == "1" ]; then
      dir="_Sega"
fi

res=$(exist "Super Hang-On (sitdown-upright) (unprotected).mra")
if [ "$res" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Super Hang-On (sitdown-upright) (unprotected).mra" "_Super Hang-On"
   add "$dir" "H" "Out Run (sitdown-upright, Rev B).mra" "_Out Run"
   add "$dir" "H" "Turbo Out Run (Out Run upgrade) (FD1094 317-0118).mra" "_Turbo Out Run"
   dot
fi