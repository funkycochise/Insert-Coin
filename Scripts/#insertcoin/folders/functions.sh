 #!/bin/bash  

exec 3>&1
special_echo () {
    echo -e "$@" >&3
}
exec &>/dev/null

RegSourceRoot=/media/fat/_Arcade
AltSourceRoot=/media/fat/_Arcade/_alternatives

function create {
newFolder=$1
#echo "   creating ${newFolder}"
mkdir -p "${newFolder}"
}

function symlinkfolder {

echo "   1 : $1" >/dev/null
echo "   2 : $2" >/dev/null
if ([ -z "$2" ]); then 
   echo "no rename, linking folder" >/dev/null

  if [ ! -d "$OutputRoot/$MainDir/$1" ] 
  then
    ln -s "$AltSourceRoot/$1"  "$OutputRoot/$MainDir/$1"
  fi
else
   #rename alternate folder
  if [ ! -d "$OutputRoot/$MainDir/$2" ] 
  then
    ln -s "$AltSourceRoot/$1"  "$OutputRoot/$MainDir/$2"
  fi
fi
}

function createreplacefolder {

rm -r "$AltSourceRoot/$1"
mkdir -p "$AltSourceRoot/$1"
}


function copyfile {
echo "copying $RegSourceRoot/$1 to $AltSourceRoot/$2" >/dev/null

if [ -d "$AltSourceRoot/$2" ]; then
   echo "$AltSourceRoot/$2 exists" >/dev/null
else
   echo "   $AltSourceRoot/$2 doesn't exist" >/dev/null
   mkdir -p "$AltSourceRoot/$2"
fi
if  test -f "$RegSourceRoot/$1"; then
   #file does exist
   cp "$RegSourceRoot/$1" "$AltSourceRoot/$2"
fi
}

function createlinkfile {
echo "copying $RegSourceRoot/$1 to $AltSourceRoot/$2" >/dev/null

if [ -d "$AltSourceRoot/$2" ]; then
   echo "$AltSourceRoot/$2 exists" >/dev/null
else
   echo "   $AltSourceRoot/$2 doesn't exist" >/dev/null
   mkdir -p "$AltSourceRoot/$2"
fi
rm -r "$AltSourceRoot/$2/$1"
ln -s "$RegSourceRoot/$1" "$AltSourceRoot/$2/$1"
#cp "$RegSourceRoot/$1" "$AltSourceRoot/$2"
}

function addgame {
#echo -e "\naddgame $3" >> /media/fat/Scripts/out.txt
if  test -f "$RegSourceRoot/$1"; then
   createlinkfile "$1" "$2"
   symlinkfolder "$2" "$3"
#else
#   echo -e "NF $RegSourceRoot/$1\n" >> /media/fat/Scripts/out.txt
fi
}

function linkgame {
if  test -f "$RegSourceRoot/$1"; then
   symlinkfolder "$2" "$3"
fi
}
