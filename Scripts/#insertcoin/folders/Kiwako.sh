#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep kiwako $names)
else
   kiwako="_Kiwako"
fi
dir=$kiwako

res=$(exist "Mr. Jong.mra")
if [ "$res" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Mr. Jong.mra" "_CrazyBlocks"
   add "$dir" "V" "BlockBuster.mra" "_CrazyBlocks"
   add "$dir" "V" "CrazyBlocks.mra" "_CrazyBlocks"
   dot
fi