
exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

if test -f "./neogeo.zip"; then
   special_echo "copying neogeo.zip to games/mame"
   cp ./neogeo.zip /media/fat/games/mame
fi
