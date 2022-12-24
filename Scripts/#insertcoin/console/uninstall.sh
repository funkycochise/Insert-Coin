# redirect stdout/stderr to a file
#exec >run.txt 2>&1

exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

special_echo "Uninstall latest console build updater"

if test -f "/media/fat/Scripts/#insertcoin/update/update_console.sh"; then
   rm /media/fat/Scripts/#insertcoin/update/update_console.sh
fi
special_echo "Complete."


