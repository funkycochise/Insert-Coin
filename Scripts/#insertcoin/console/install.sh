# redirect stdout/stderr to a file
#exec >run.txt 2>&1

exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

special_echo "Installing latest console build updater"
cd /media/fat
mkdir /media/fat/Scripts/temp
cd /media/fat/Scripts/temp
wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/update_console.sh
mv /media/fat/Scripts/temp/update_console.sh /media/fat/Scripts/#insertcoin/update
rm -r /media/fat/Scripts/temp >/dev/null
sh /media/fat/Scripts/#insertcoin/update/update_console.sh
special_echo "Completed."





