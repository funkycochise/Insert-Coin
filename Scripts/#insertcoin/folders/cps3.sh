#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$cps3
else
   dir=$capcom
fi
resh=$(exist "1944 The Loop Master (Europe 000620).mra")
#resv=$(exist "Dimahoo (Europe 000121).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H"  "Red Earth (Asia 961121, NO CD).mra" "_Red Earth" "" "VSF"
   #add "$dir" "H"  "Red Earth (Asia 961123, NO CD).mra" "_Red Earth" "" "VSF"
   add "$dir" "H"  "Street Fighter III New Generation (Asia 970204, NO CD, BIOS set 1).mra" "_Street Fighter III New Generation" "" "VSF"
   add "$dir" "H"  "Street Fighter III 2nd Impact Giant Attack (Asia 970930, NO CD).mra" "_Street Fighter III 2nd Impact Giant Attack" "" "VSF"
   add "$dir" "H"  "JoJo's Venture (Asia 990128, NO CD).mra" "_JoJo's Venture" "" "VSF"

   dot
fi
