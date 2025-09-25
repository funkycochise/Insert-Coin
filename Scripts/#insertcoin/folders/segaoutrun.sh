#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep outrun $names)
else
   outrun="_Sega-Outrun"
fi
if [ -f "$names" ]; then
   source <(grep sega $names)
else
   sega="_Sega"
fi
if [ "$show_system" == "1" ]; then
   dir=$outrun
else
   dir=$sega
fi

resh=$(exist "Super Hang-On (sitdown-upright) (unprotected).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "H" "Super Hang-On (sitdown-upright) (unprotected).mra" "_Super Hang-On"
   add "$dir" "H" "Out Run (sitdown-upright, Rev B).mra" "_Out Run"
   add "$dir" "H" "Turbo Out Run (Out Run upgrade) (FD1094 317-0118).mra" "_Turbo Out Run"
   dot
fi