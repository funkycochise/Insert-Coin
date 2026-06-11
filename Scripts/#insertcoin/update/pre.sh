#!/bin/bash

file="/media/fat/_Arcade/Cabal PGM.mra"
if [ -f "$file" ]; then
   rm -r "$file"
fi
dir="/media/fat/_Arcade/_alternatives/_Cabal PGM"
if [ -d "$dir" ]
then
   rm -r "$dir"
fi
