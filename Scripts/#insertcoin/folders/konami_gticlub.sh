#!/bin/bash
source ./folders/functions.sh

if [ "$show_system" == "1" ]; then
   dir=$konamigticlub
else
   dir=$konami
fi

resh=$(exist "GTI Club (FF, Konami, 1996).mra")
if  [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

   add "$dir" "H"  "GTI Club (FF, Konami, 1996).mra" "_GTI Club" "" "RAC"
   add "$dir" "H"  "Operation Thunder Hurricane (FF, Konami, 1997).mra" "_Operation Thunder Hurricane" "" ""
   add "$dir" "H"  "Solar Assault (FF, Konami, 1997).mra" "_Solar Assault" "" "STG"
   add "$dir" "H"  "Jet Wave (FF, Konami, 1996).mra" "_Jet Wave" "" ""

   dot
fi
