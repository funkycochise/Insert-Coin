#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$outrun
else
   dir=$sega
fi
resh=$(exist "Super Hang-On (sitdown-upright) (unprotected).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   add "$dir" "H" "Super Hang-On (sitdown-upright) (unprotected).mra" "_Super Hang-On"
   add "$dir" "H" "Out Run (sitdown-upright, Rev B).mra" "_Out Run"
   add "$dir" "H" "Turbo Out Run (Out Run upgrade) (FD1094 317-0118).mra" "_Turbo Out Run"
   dot
fi