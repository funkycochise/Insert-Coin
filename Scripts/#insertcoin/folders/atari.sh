
source ./folders/functions.sh

dir="_Atari"
out=$1
horizontal=$2
vertical=$3

setout "$out"
sethorizontal "$horizontal"
setvertical "$vertical"

add "$dir" "V" "Breakout (TTL).mra" "_Breakout"
add "$dir" "V" "Centipede (Rev 3).mra" "_Centipede"
add "$dir" "V" "Centipede (Rev 4).mra" "_Centipede"
add "$dir" "V" "Super Breakout (Rev 04).mra" "_Super Breakout"
add "$dir" "V" "Super Xevious.mra" "_Xevious"
add "$dir" "V" "Tron.mra" "_Tron"
add "$dir" "V" "Xevious.mra" "_Xevious"

add "$dir" "H" "Asteroids Deluxe.mra" "_Asteroids Deluxe"
add "$dir" "H" "Asteroids.mra" "_Asteroid"
add "$dir" "H" "Black Widow.mra" "_Black Widow"
add "$dir" "H" "Canyon Bomber.mra" "_Canyon Bomber"
add "$dir" "H" "Crystal Castles.mra" "_Crystal Castles"
add "$dir" "H" "Discs of Tron.mra" "_Disc of Tron"
add "$dir" "H" "Dominos.mra" "_Dominos"
add "$dir" "H" "Food Fight (Rev 3).mra" "_Food Fight"
add "$dir" "H" "Gauntlet (rev 14).mra" "_Gauntlet"
add "$dir" "H" "Gauntlet II.mra" "_Gauntlet II"
add "$dir" "H" "Gravitar (Ver 3).mra" "_Gravitar"
add "$dir" "H" "Indiana Jones (set 4).mra" "_Indiana Jones"
add "$dir" "H" "Lunar Battle (Prototype).mra" "_Lunar Battle"
add "$dir" "H" "Lunar Lander.mra" "_Lunar Lander"
add "$dir" "H" "Marble Madness (set 4).mra" "_Marble Madness"
add "$dir" "H" "Marble Madness (set 5 - LSI).mra" "_Marble Madness"
add "$dir" "H" "Missile Command (rev 1).mra" "_Missile_Command"
add "$dir" "H" "Missile Command (rev 2).mra" "_Missile_Command"
add "$dir" "H" "Missile Command (rev 3).mra" "_Missile_Command"
add "$dir" "H" "Peter Pack Rat.mra" "_Peter Pack Rat"
add "$dir" "H" "Road Blasters (upright, rev 4).mra" "_Road Blasters"
add "$dir" "H" "Road Runner (rev 2).mra" "_Road Runner"
add "$dir" "H" "Space Race [TTL].mra" "_Space Race"
add "$dir" "H" "Sprint 1.mra" "_Sprint 1"
add "$dir" "H" "Sprint 2.mra" "_Sprint 2"
add "$dir" "H" "Subs.mra" "_Subs"
add "$dir" "H" "Vindicators Part II (rev 3).mra" "_Vindicators part II"
dir "$dir" "V" "_Atari Tetris"  "_Tetris"
dot