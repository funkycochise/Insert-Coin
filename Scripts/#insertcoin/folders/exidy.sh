#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep exidy $names)
else
   exidy="_Exidy"
fi
dir=$exidy

resh=$(exist "TARG.mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "H" "Venture Revision 5.mra" "_Venture"
   add "$dir" "H" "TARG.mra" "_TARG"
   add "$dir" "H" "Spectar.mra" "_Spectar"
   add "$dir" "H" "Pepper II.mra" "_Pepper II"
   add "$dir" "H" "Mouse Trap.mra" "_Mouse Trap"
   add "$dir" "H" "Hard Hat.mra" "_Hard Hat"
   dot
fi