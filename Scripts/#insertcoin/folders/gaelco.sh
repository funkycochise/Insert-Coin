#!/bin/bash  
source ./folders/functions.sh

   dir=$gaelco

resh=$(exist "World Rally Championship (set 2).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then  

   add "$dir" "H" "World Rally Championship (set 2).mra" "_World Rally Championship" "" "SPO"

  dot
fi
