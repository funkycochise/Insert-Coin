#!/bin/bash  
source ./folders/functions.sh

dir="_Sega"
outdir=$1
horizontal=$2
vertical=$3
stg_horizontal=$4
stg_vertical=$5

add "$dir" "V" "Carnival.mra" "_Carnival" "" "ACT"
add "$dir" "V" "Future Spy (315-5061).mra" "_Future Spy"
add "$dir" "V" "Pengo (Set 1, Rev C).mra" "_Pengo" "" "PUZ"
add "$dir" "V" "Pulsar.mra" "_Pulsar" 
add "$dir" "V" "Super Zaxxon (315-5013).mra" "_Super Zaxxon" "" "ACT"
add "$dir" "V" "Zaxxon (Set 1, Rev D).mra" "_Zaxxon" "" "ACT"

add "$dir" "H" "BankPanic.mra" "_BankPanic"

dot
