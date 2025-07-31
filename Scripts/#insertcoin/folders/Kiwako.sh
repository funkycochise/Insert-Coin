#!/bin/bash
source ./folders/functions.sh
loadsetup

res=$(exist "MrJong.mra")
if [ "$res" == "1" ]; then
   dir="_Kiwako"
   outdir=$1
   add "$dir" "V" "MrJong.mra" "_CrazyBlocks"
   add "$dir" "V" "BlockBuster.mra" "_CrazyBlocks"
   add "$dir" "V" "CrazyBlocks.mra" "_CrazyBlocks"
   dot
fi