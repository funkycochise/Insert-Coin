#!/bin/bash  
source ./folders/functions.sh

dir="_Sega-System-1"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Block Gal.mra" "_Block Gal"
add "$dir" "V" "Gardia (317-0006).mra" "_Gardia"
add "$dir" "V" "Mister Viking (315-5041).mra" "_Mister Viking"
add "$dir" "V" "Noboranka (bootleg).mra" "_Noboranka"
add "$dir" "V" "Rafflesia (315-5162).mra" "_Rafflesia"
add "$dir" "V" "Regulus (315-5033, Rev A).mra" "_Regulus"
add "$dir" "V" "Star Jacker.mra" "_Star Jacker"
add "$dir" "V" "Star Jacker (alt).mra" "_Star Jacker"
add "$dir" "V" "SWAT (World, 315-5048).mra" "_SWAT"
add "$dir" "V" "Toki no Senshi - Chrono Soldier.mra" "_Toki no Senshi"
add "$dir" "V" "Up'n Down.mra" "_Up'n Down"
add "$dir" "V" "Water Match (315-5064).mra" "_Water Match"

add "$dir" "H" "4D Warriors (315-5162).mra" "_4D Warriors"
add "$dir" "H" "Bull Fight (315-5056).mra" "_Bullfight"
add "$dir" "H" "Dakkochan House (MC-8123).mra" "_Dakkochan House"
add "$dir" "H" "Flicky (128k Version, 315-5051).mra" "_Flicky"
add "$dir" "H" "I'm Sorry (US, 315-5110).mra" "_I'm sorry"
add "$dir" "H" "My Hero (US, not Encrypted).mra" "_My Hero"
add "$dir" "H" "Pitfall II.mra" "_Pitfall II"
add "$dir" "H" "Sega Ninja (315-5102).mra" "_Sega Ninja"
add "$dir" "H" "Spatter (315-5xxx).mra" "_Spatter"
add "$dir" "H" "TeddyBoy Blues (315-5115, New Ver).mra" "_TeddyBoy Blues"
add "$dir" "H" "Wonder Boy (Set 1, 315-5177).mra" "_Wonder Boy"

dot
