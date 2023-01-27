# redirect stdout/stderr to a file
#exec >run.txt 2>&1

ALT=/media/fat/_Arcade/_alternatives

exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

subfolder="folders"

launchdir=$1
#special_echo "launchdir $launchdir"

targetdir=$2
if ([ -z "$2" ]); then 
  targetdir="_Insert_Coin"
fi

OutputRoot="/media/fat/_Arcade/$targetdir"
special_echo "Creating $OutputRoot/"
if [ -d "$OutputRoot" ]; then
   rm -r "$OutputRoot" >/dev/null
fi
mkdir -p "$OutputRoot"


#special_echo "Creating $OutputRoot/_SNK"
sh ./$subfolder/snk.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Space Invaders"
sh ./$subfolder/si.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Taito"
sh ./$subfolder/taito.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Technos"
sh ./$subfolder/technos.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Tehkan-Tecmo"
sh ./$subfolder/Tehkan-Tecmo.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Toaplan"
sh ./$subfolder/toaplan.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Universal"
sh ./$subfolder/universal.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Upl"
sh ./$subfolder/upl.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/_Williams"
sh ./$subfolder/williams.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/__Newest"
sh ./$subfolder/newest.sh "$OutputRoot"

sh ./$subfolder/vertical.sh "$OutputRoot"
sh ./$subfolder/horizontal.sh "$OutputRoot"

#special_echo "Creating $OutputRoot/__Debug"
#sh ./$subfolder/debug.sh "$OutputRoot"

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
#Zaxxon
if [ -d "$ALT/_Zaxxon" ] 
then
   rm -r "$ALT/_Zaxxon"
fi
special_echo ""

