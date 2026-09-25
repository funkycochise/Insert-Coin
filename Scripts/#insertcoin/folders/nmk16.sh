#!/bin/bash
source ./folders/functions.sh
if [ "$show_system" == "1" ]; then
   dir=$nmk16
else
dir=$nmk
fi

resv=$(exist "Acrobat Mission.mra")
resh=$(exist "Bio-ship Paladin.mra")
#if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then

add "$dir" "V" "Acrobat Mission.mra" "_Acrobat Mission" "" "STG"
add "$dir" "V" "Air Attack (set 1).mra" "_Air Attack" "" "STG"

add "$dir" "V" "Bombjack Twin (set 1).mra" "_Bombjack Twin" "" "ACT"
add "$dir" "H" "Dolmen.mra" "_Dolmen" "" "PUZ"
add "$dir" "H" "Guardian Storm (horizontal, not encrypted).mra" "_Guardian Storm" "" ""
add "$dir" "V" "GunNail (28th May. 1992).mra" "_GunNail" "" ""
add "$dir" "V" "Hacha Mecha Fighter (19th Sep. 1991, protected, set 1).mra" "_Hacha Mecha Fighter" "" ""
add "$dir" "H" "Koutetsu Yousai Strahl (World).mra" "_Koutetsu Yousai Strahl" "" ""
add "$dir" "V" "Mang-Chi.mra" "_Mang-Chi" "" ""
add "$dir" "V" "Many Block.mra" "_Many Block" "" ""
add "$dir" "H" "Nouryoku Koujou Iinkai.mra" "_Nouryoku Koujou Iinkai" "" ""
add "$dir" "V" "Pop's Pop's.mra" "_Pop's Pop's" "" ""
add "$dir" "H" "Power Instinct (USA).mra" "_Power Instinct" "" ""
add "$dir" "V" "Puzzle World.mra" "_Puzzle World" "" ""
add "$dir" "V" "Rapid Hero (NMK).mra" "_Rapid Hero" "" ""
add "$dir" "V" "Saboten Bombers (set 1).mra" "_Saboten Bombers" "" ""
add "$dir" "V" "Spectrum 2000 (vertical, Korea).mra" "_Spectrum 2000" "" ""
add "$dir" "V" "S.S. Mission.mra" "_S.S. Mission" "" ""
add "$dir" "V" "Stagger I (Japan).mra" "_Stagger I" "" ""
add "$dir" "V" "Super Spacefortress Macross - Chou-Jikuu Yousai Macross.mra" "_Super Spacefortress Macross - Chou-Jikuu Yousai Macross" "" ""
add "$dir" "V" "Super Spacefortress Macross II - Chou-Jikuu Yousai Macross II.mra" "_Super Spacefortress Macross II - Chou-Jikuu Yousai Macross II" "" ""
add "$dir" "H" "Task Force Harrier.mra" "_Task Force Harrier" "" ""
add "$dir" "V" "Thunder Dragon 2 (9th Nov. 1993).mra" "_Thunder Dragon 2" "" ""
add "$dir" "V" "Thunder Dragon (8th Jan. 1992, unprotected).mra" "_Thunder Dragon" "" ""
add "$dir" "V" "Tom Tom Magic.mra" "_Tom Tom Magic" "" ""
add "$dir" "H" "Twin Action.mra" "_Twin Action" "" ""
add "$dir" "H" "US AAF Mustang (25th May. 1990).mra" "_US AAF Mustang" "" ""
add "$dir" "V" "Vandyke (Japan).mra" "_Vandyke" "" ""

add "$dir" "H" "Bio-ship Paladin.mra" "_Bio-ship Paladin" "" "STG"
add "$dir" "H" "Black Heart.mra" "_Black Heart" "" "STG"
add "$dir" "H" "Bubble 2000.mra" "_Bubble 2000" "" "PUZ"
   dot
#fi