#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep kiwako $names)
else
   kiwako="_Kiwako"
fi
dir=$kiwako

resv=$(exist "Mr. Jong.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V" "Mr. Jong.mra" "_CrazyBlocks"
   add "$dir" "V" "BlockBuster.mra" "_CrazyBlocks"
   add "$dir" "V" "Crazy Blocks.mra" "_CrazyBlocks"
   dot
fi