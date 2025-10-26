#!/bin/bash  
source ./folders/functions.sh

loadsetup

if [ -f "$names" ]; then
   source <(grep segasys16 $names)
else
   segasys16="_Sega-System-16"
fi
if [ -f "$names" ]; then
   source <(grep sega $names)
else
   sega="_Sega"
fi
if [ "$show_system" == "1" ]; then
   dir=$segasys16
else
   dir=$sega
fi
if [ -f "$names" ]; then
   source <(grep sega $names)
else
   sega="_Sega"
fi
if [ "$show_system" == "1" ]; then
   dir=$segasys16
else
   dir=$sega
fi

resh=$(exist "Shinobi (Set 6, World, S16A) [No Protection].mra")
resv=$(exist "Sonic Boom (FD1094 317-0053).mra")
if [ "$resh" == "1" ] || [ "$resv" == "1" ]; then
   outdir=$1

   add "$dir" "V" "Ace Attacker (Japan, S16A) [FD1094 317-0060].mra" "_Ace Attacker" "" "SPO"
   add "$dir" "V" "Action Fighter (World, S16A) [FD1089A 317-0018].mra" "_Action Fighter"
   add "$dir" "V" "Major League (World, S16A) [No Protection].mra" "_Major League" "" "SPO"
   add "$dir" "V" "Passing Shot (World, 2 Players) (FD1094 317-0080).mra" "_Passing Shot" "" "SPO"
   add "$dir" "V" "Sonic Boom (FD1094 317-0053).mra" "_Sonic Boom" "" "ACT"
   add "$dir" "V" "Time Scanner (set 2, System 16B).mra" "_Time Scanner" "" "SPO"
   add "$dir" "V" "Wrestle War (set 3, World) (8751 317-0103).mra" "_Wrestle War" "" "SPO"

   add "$dir" "H" "Alex Kidd The Lost Stars (Set 2, World, S16A) [No Protection].mra" "_Alex Kidd The Lost Stars"
   add "$dir" "H" "Alien Syndrome (set 4, System 16B, unprotected).mra" "_Alien Syndrome" "" "ACT"
   add "$dir" "H" "Altered Beast (set 8) (8751 317-0078).mra" "_Altered Beast" "" "BEA"
   add "$dir" "H" "Aurail (set 3, US) (unprotected).mra" "_Aurail"
   add "$dir" "H" "Bay Route (set 3, World) (FD1094 317-0116).mra" "_Bay Route" "" "ACT"
   add "$dir" "H" "Body Slam (World, S16) [8751 317-0015].mra" "_Body Slam" "" "SPO"
   add "$dir" "H" "Bullet (FD1094 317-0041).mra" "_Bullet"
   add "$dir" "H" "Cotton (set 4, World) (FD1094 317-0181a).mra" "_Cotton" "" "STG"
   add "$dir" "H" "Dunk Shot (Rev C, FD1089A 317-0022).mra" "_Dunk Shot" "" "SPO"
   add "$dir" "H" "Dynamite Dux (set 3, World) (FD1094 317-0096).mra" "_Dynamite Dux" "" "BEA"
   add "$dir" "H" "E-Swat - Cyber Police (set 4, World) (FD1094 317-0130).mra" "_E-Swat" "" "ACT"
   add "$dir" "H" "Excite League (FD1094 317-0079).mra" "_Excite League"
   add "$dir" "H" "Fantasy Zone (Rev A, World, S16A) [No Protection].mra" "_Fantasy Zone" "" "STG"
   add "$dir" "H" "Fantasy Zone II - The Tears of Opa-Opa (System 16C version).mra" "_Fantasy Zone II" "" "STG"
   add "$dir" "H" "Flash Point (set 2, Japan) (FD1094 317-0127A).mra" "_Flash Point" "" "SPO"
   add "$dir" "H" "Golden Axe (set 6, US) (8751 317-123A).mra" "_Golden Axe" "" "BEA"

   add "$dir" "H" "MVP (set 2, US) (FD1094 317-0143).mra" "_MVP" "" "SPO"
   add "$dir" "H" "Quartet 2 (World, S16A) [No Protection].mra" "_Quartet" "" "ACT"
   add "$dir" "H" "Riot City (Japan).mra" "_Riot City" "" "BEA"
   add "$dir" "H" "RyuKyu (Rev A, Japan) (FD1094 317-5023A).mra" "_RyuKyu"
   add "$dir" "H" "SDI Strategic Defense Initiative (Japan, New Ver., S16A) [FD1089B 317-0027].mra" "_SDI" "" "STG"
   add "$dir" "H" "Shinobi (Set 6, World, S16A) [No Protection].mra" "_Shinobi" "" "ACT"
   add "$dir" "H" "Sukeban Jansi Ryuko (set 2, System 16B, FD1089B 317-5021).mra" "_Sukeban Jansi Ryuko"
   add "$dir" "H" "Super League (FD1094 317-0045).mra" "_Super League" "" "SPO"
   add "$dir" "H" "Toryumon.mra" "_Toryumon"
   add "$dir" "H" "Tough Turf (set 1, US) (8751 317-0099).mra" "_Tough Turf" "" "BEA"
   add "$dir" "H" "Waku Waku Ultraman Racing.mra" "_Waku Waku Ultraman Racing"
   add "$dir" "H" "Wonder Boy III - Monster Lair (set 6, World, System 16B) (8751 317-0098).mra" "_Wonder Boy III" "" "ACT"
   add "$dir" "H" "Toryumon.mra" "_Toryumon" ""
   #add "$dir" "H" "Tetris (Set 4, Japan, S16A) [FD1094 317-0093].mra" "_Tetris" "_Tetris (Sega)" "PUZ"

   dot
fi