#!/bin/bash
source ./folders/functions.sh
loadsetup

if [ -f "$names" ]; then
   source <(grep jaleco $names)
else
   jaleco="_Jaleco"
fi
dir=$jaleco

resh=$(exist "Rod-Land (World, set 1).mra")
resv=$(exist "Psychic 5 (World).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Exerion (Taito).mra" "_Exerion" "" "STG"
   add "$dir" "V" "Grasspin (Jaleco).mra" "_Grasspin" "" ""
   add "$dir" "V" "Naughty Boy (Jaleco).mra" "_Naughty Boy" "" "ACT"
   add "$dir" "V" "Plus Alpha.mra" "_Plus Alpha"
   add "$dir" "V" "Psychic 5 (World).mra" "_Psychic 5" "" "ACT"
   add "$dir" "V" "Saturn (Zilec).mra" "_Saturn" "" "STG"

   add_rep "$dir" "H" "_Avenging Spirit"  "_Avenging Spirit" "" "ACT"
   add "$dir" "H" "chameleon.mra" "_Chameleon" "" "ACT"
   add "$dir" "H" "Iga Ninjyutsuden (Japan).mra" "_Ninja Kazan" "" "ACT"
   add "$dir" "H" "P-47 - The Freedom Fighter (Japan).mra" "_P-47 - The Freedom Fighter" "" "STG"
   add "$dir" "H" "Rod-Land (World, set 1).mra" "_Rod-Land" "" "ACT"
   add "$dir" "H" "Saint Dragon (Set 1).mra" "_Saint Dragon" "" "STG"
   add "$dir" "H" "Soldam.mra" "_Soldam" "" "PUZ"
   add "$dir" "H" "The Lord of King (Japan).mra" "_The Astyanax" "" "ACT"
   add "$dir" "H" "Hachoo.mra" "_Hachoo" "" "ACT"
   add "$dir" "H" "In Your Face (US, Prototype).mra" "_In Your Face" "" "ACT"
   add_rep "$dir" "H" "_E.D.F. - Earth Defense Force"  "_E.D.F. - Earth Defense Force" "" "ACT"
   add "$dir" "H" "Jitsuryoku!! Pro Yakyuu (Japan).mra" "_Jitsuryoku!! Pro Yakyuu" "" "ACT"
   dot
fi
