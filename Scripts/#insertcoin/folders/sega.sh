#!/bin/bash  
source ./folders/functions.sh

dir="_Sega"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Future Spy (315-5061).mra" "_Future Spy"
add "$dir" "V" "Pengo (Set 1, Rev C).mra" "_Pengo"
add "$dir" "V" "Super Zaxxon (315-5013).mra" "_Super Zaxxon"
add "$dir" "V" "Zaxxon (Set 1, Rev D).mra" "_Zaxxon"
add "$dir" "V" "Congo Bongo.mra" "_Congo Bongo"

add "$dir" "H" "BankPanic.mra" "_BankPanic"

dot
