#!/bin/bash
source ./folders/functions.sh
dir=$atarisys2

resh=$(exist "Paperboy (rev 3).mra")
resv=$(exist "APB - All Points Bulletin (rev 7).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "V" "APB - All Points Bulletin (rev 7).mra" "_APB - All Points Bulletin" "" "ACT"

   add "$dir" "H" "720 Degrees (rev 4).mra" "_720 Degrees" "" "ACT"
   add "$dir" "H" "Championship Sprint (rev 3).mra" "_Championship Sprint" "" "SPO"
   add "$dir" "H" "Paperboy (rev 3).mra" "_Paperboy" "" "ACT"
   add "$dir" "H" "Super Sprint (rev 4).mra" "_Super Sprint" "" "SPO"
   dot
fi