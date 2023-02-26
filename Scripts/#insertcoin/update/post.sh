# redirect stdout/stderr to a file
#exec >run.txt 2>&1

exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

ALT=/media/fat/_Arcade/_alternatives

#Tetris Clean up
echo "$ALT/_Tetris"
if [ -d "$ALT/_Tetris" ] 
then
   rm -r "$ALT/_Tetris"
fi
#Alex Kidd clean up
if [ -d "$ALT/_Alex Kidd" ] 
then
   rm -r "$ALT/_Alex Kidd"
fi
# move Boulderdash japan version
if [ -d "$ALT/_Boulder Dash/Boulder Dash Part 2" ] 
then
   mv "$ALT/_Boulder Dash/Boulder Dash Part 2/Boulder Dash - Boulder Dash Part 2 (Japan).mra" "$ALT/_Boulder Dash"
   rm -r "$ALT/_Boulder Dash/Boulder Dash Part 2"
fi
#gameboy color ? remove
if [ -f "/media/fat/_Console/GameboyColor.mgl" ] 
then
   rm -r "/media/fat/_Console/GameboyColor.mgl"
fi
#wonderswan color mgl ? remove
if [ -f "/media/fat/_Console/WonderSwan Color.mgl" ] 
then
   rm -r "/media/fat/_Console/WonderSwan Color.mgl"
fi
