# redirect stdout/stderr to a file
#exec >run.txt 2>&1

ALT=/media/fat/_Arcade/_alternatives

exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

rm -r /media/fat/Scripts/#insertcoin/console.zip*

#Zaxxon
if [ -d "$ALT/_Zaxxon" ] 
then
   rm -r "$ALT/_Zaxxon"
fi
#Future Spy
if [ -d "$ALT/_Future Spy" ] 
then
   rm -r "$ALT/_Future Spy"
fi
_Future Spy

find . -maxdepth 1 -type f -name "SEGASYS1_*" ! -name "SEGASYS1_20210901.rbf*" -delete
