#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep segag80 $names)
else
   segag80="_Sega-G80"
fi
if [ -f "$names" ]; then
   source <(grep sega $names)
else
   sega="_Sega"
fi
if [ "$show_system" == "1" ]; then
   dir=$segag80
else
   dir=$sega
fi
#echo "$dir"
resh=$(exist "005.mra")
resv=$(exist "Astro Blaster.mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1
   add "$dir" "V" "005.mra" "_005" "" "STG"
   add "$dir" "V" "Astro Blaster.mra" "_Astro Blaster" "" "STG"
   add "$dir" "V" "Monster Bash.mra" "_Monster Bash" "" "STG"
   add "$dir" "V" "Pig Newton.mra" "_Pig Newton" "" "ACT"
   add "$dir" "V" "Sindbad Mystery.mra" "_Sindbad Mystery" "" "ACT"
   add "$dir" "V" "Space Odyssey.mra" "_Space Odyssey" "" "STG"
   dot
fi
