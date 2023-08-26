
source ./folders/functions.sh

dir="_Irem M92"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "H" "Blade Master (World).mra" "_Blade Master"
add "$dir" "H" "Dream Soccer '94 (Japan, M92 hardware).mra" "_Dream Soccer '94"
add "$dir" "H" "Gun Force II (US).mra" "_Gun Force II"
add "$dir" "H" "Gunforce - Battle Fire Engulfed Terror Island (World).mra" "_Gunforce - Battle Fire Engulfed Terror Island"
add "$dir" "H" "Hook (World).mra" "_Hook"
add "$dir" "H" "In The Hunt (World).mra" "_In The Hunt"
dir "$dir" "H" "Major Title 2 (World, set 1).mra" "_Major Title 2"
add "$dir" "H" "Mystic Riders (World).mra" "_Mystic Riders"
add "$dir" "H" "Ninja Baseball Bat Man (World).mra" "_Ninja Baseball Bat Man"
add "$dir" "H" "R-Type Leo (World).mra" "_R-Type Leo"
add "$dir" "H" "Superior Soldiers (US).mra" "_Superior Soldiers"
add "$dir" "H" "Undercover Cops (World).mra" "_Undercover Cops"
add "$dir" "V" "Lethal Thunder (World).mra" "_Lethal Thunder"

dir "$dir" "H" "" "_Blade Master (Turbo)"
dir "$dir" "H" "" "_Dream Soccer '94 (Turbo)"
dir "$dir" "H" "" "_Gun Force II (Turbo)"
dir "$dir" "H" "" "_Gunforce - Battle Fire Engulfed Terror Island (Turbo)"
dir "$dir" "H" "" "_Hook (Turbo)"
dir "$dir" "H" "" "_In The Hunt (Turbo)"
dir "$dir" "H" "" "_Lethal Thunder (Turbo)"
dir "$dir" "H" "" "_Major Title 2 (Turbo)"
dir "$dir" "H" "" "_Mystic Riders (Turbo)"
dir "$dir" "H" "" "_Ninja Baseball Bat Man (Turbo)"
dir "$dir" "H" "" "_R-Type Leo (Turbo)"
dir "$dir" "H" "" "_Superior Soldiers (Turbo)"
dir "$dir" "H" "" "_Undercover Cops (Turbo)"
dot