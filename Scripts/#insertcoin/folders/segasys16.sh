 #!/bin/bash  

source ./folders/functions.sh

ALT=/media/fat/_Arcade/_alternatives

OutputRoot=$1

#echo "OutputRoot : $OutputRoot"

MainDir="_Sega-System16"

cd $OutputRoot

create "$MainDir"

orientation=$2

#if [ -z "$orientation" ] || [ "$orientation" = "V" ];
#then
#   #special_echo "\$orientation is empty or V"
#fi
if [ -z "$orientation" ] || [ "$orientation" = "H" ];
then
   #special_echo "\$orientation is empty or H"
   addgame "Ace Attacker (FD1094 317-0059).mra" "_Ace Attacker"
   addgame "Action Fighter (World, S16A) [FD1089A 317-0018].mra" "_Action Fighter"
   addgame "Alex Kidd The Lost Stars (Set 2, World, S16A) [No Protection].mra" "_Alex Kidd The Lost Stars"
   addgame "Alien Syndrome (set 4, System 16B, unprotected).mra" "_Alien Syndrome"
   addgame "Altered Beast (set 8) (8751 317-0078).mra" "_Altered Beast"
   addgame "Aurail (set 3, US) (unprotected).mra" "_Aurail"
   addgame "Bay Route (set 3, World) (FD1094 317-0116).mra" "_Bay Route"
   addgame "Body Slam (World, S16) [8751 317-0015].mra" "_Body Slam"
   addgame "Bullet (FD1094 317-0041).mra" "_Bullet"
   addgame "Cotton (set 4, World) (FD1094 317-0181a).mra" "_Cotton"
   addgame "Dunk Shot (Rev C, FD1089A 317-0022).mra" "_Dunk Shot"
   addgame "Dynamite Dux (set 3, World) (FD1094 317-0096).mra" "_Dynamite Dux"
   addgame "E-Swat - Cyber Police (set 4, World) (FD1094 317-0130).mra" "_E-Swat"
   addgame "Excite League (FD1094 317-0079).mra" "_Excite League"
   addgame "Fantasy Zone (Rev A, World, S16A) [No Protection].mra" "_Fantasy Zone"
   addgame "Fantasy Zone II - The Tears of Opa-Opa (System 16C version).mra" "_Fantasy Zone II"
   addgame "Flash Point (set 2, Japan) (FD1094 317-0127A).mra" "_Flash Point"
   addgame "Golden Axe (set 6, US) (8751 317-123A).mra" "_Golden Axe"
   addgame "Major League (World, S16A) [No Protection].mra" "_Major League"
   addgame "MVP (set 2, US) (FD1094 317-0143).mra" "_MVP"
   addgame "Passing Shot (World, 2 Players) (FD1094 317-0080).mra" "_Passing Shot"
   addgame "Quartet 2 (World, S16A) [No Protection].mra" "_Quartet"
   addgame "Riot City (Japan).mra" "_Riot City"
   addgame "RyuKyu (Rev A, Japan) (FD1094 317-5023A).mra" "_RyuKyu"
   addgame "SDI Strategic Defense Initiative (Japan, New Ver., S16A) [FD1089B 317-0027].mra" "_SDI"
   addgame "Shinobi (Set 6, World, S16A) [No Protection].mra" "_Shinobi"
   addgame "Sonic Boom (FD1094 317-0053).mra" "_Sonic Boom"
   addgame "Sukeban Jansi Ryuko (set 2, System 16B, FD1089B 317-5021).mra" "_Sukeban Jansi Ryuko"
   addgame "Super League (FD1094 317-0045).mra" "_Super League"
   addgame "Time Scanner (set 2, System 16B).mra" "_Time Scanner"
   addgame "Toryumon.mra" "_Toryumon"
   addgame "Tough Turf (set 2, Japan) (8751 317-0104).mra" "_Tough Turf"
   addgame "Waku Waku Ultraman Racing.mra" "_Waku Waku Ultraman Racing"
   addgame "Wonder Boy III - Monster Lair (set 6, World, System 16B) (8751 317-0098).mra" "_Wonder Boy III"
   addgame "Wrestle War (set 3, World) (8751 317-0103).mra" "_Wrestle War"
   ln -s "$ALT/_Sega Tetris"  "$OutputRoot/$MainDir/_Tetris"
fi


exit 0
