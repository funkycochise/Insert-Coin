# redirect stdout/stderr to a file
#exec >run.txt 2>&1

exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

special_echo "Uninstall custom main."
cd /media/fat
mkdir /media/fat/Scripts/temp
cd /media/fat/Scripts/temp
wget https://raw.githubusercontent.com/MiSTer-devel/Main_MiSTer/master/releases/MiSTer_20221124 
if test -f "/media/fat/Scripts/temp/MiSTer_20221124"; then
   mv /media/fat/Mister /media/fat/Mister_custom
   mv /media/fat/Scripts/temp/MiSTer_20221124 /media/fat/Mister
   rm -r /media/fat/Mister_custom
   rm /media/fat/Scripts/#insertcoin/update/update_main_mister.sh
fi
rm -r /media/fat/Scripts/temp
special_echo "Uninstall Completed, reboot"
reboot




