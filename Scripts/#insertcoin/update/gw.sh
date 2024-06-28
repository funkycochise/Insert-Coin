#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

TEMP=/media/fat/scripts/temp
SD=/media/fat
USB=/media/usb0
CIFS=/media/fat/cifs
ARCHIVE=https://ia800304.us.archive.org/11/items/gw_mister/

function identify_folder {

if [ -d "$USB/games" ]; then
  target=$USB/games/"Game and Watch"/
elif [ -d "$CIFS/games" ]; then
  target=$CIFS/games/"Game and Watch"/
else
  target=$SD/games/"Game and Watch"/
fi
if ! [ -d "$target" ]; then
  mkdir $target
fi
}

function dl {

  identify_folder

   if ! test -d "$target"; then
     #special_echo "creating $target"
     mkdir "$target"
   fi

   FILE=$target$1
   #special_echo "retrieve $FILE"
   if ! test -f "$FILE"; then
      echo -n "downloading $1"
      #curl $ARCHIVE/$1 -O -k
      wget "$ARCHIVE/$1" --quiet
      mv "$TEMP/$1" "$FILE" 
      echo -e "\\r$1 ${BLUE}${CHECK}${NC}                           "
  fi

}

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "Updating game&watch folder"

if [ ! -d "$TEMP" ]; 
then
   mkdir "$TEMP"
fi
cd "$TEMP"

dl "Altered Beast (Tiger).gnw"
dl "Apollo 13 (Tiger).gnw"
dl "Ball.gnw"
dl "Chef.gnw"
dl "Crab Grab.gnw"
dl "Donkey Kong II.gnw"
dl "Donkey Kong Jr. (New Wide Screen).gnw"
dl "Donkey Kong.gnw"
dl "Egg.gnw"
dl "Fire (Silver).gnw"
dl "Fire (Wide Screen).gnw"
dl "Fire Attack.gnw"
dl "Flagman.gnw"
dl "Green House.gnw"
dl "Helmet (version CN-17).gnw"
dl "Judge (purple version).gnw"
dl "Life Boat.gnw"
dl "Lion.gnw"
dl "Manhole (Gold).gnw"
dl "Manhole (New Wide Screen).gnw"
dl "Mario Bros..gnw"
dl "Mario's Cement Factory (New Wide Screen).gnw"
dl "Mickey & Donald.gnw"
dl "Mickey Mouse (Wide Screen).gnw"
dl "Octopus.gnw"
dl "Oil Panic.gnw"
dl "Parachute.gnw"
dl "Popeye (Wide Screen).gnw"
dl "Rain Shower.gnw"
dl "Snoopy Tennis.gnw"
dl "Spitball Sparky.gnw"
dl "Squish.gnw"
dl "The Addams Family (Tiger).gnw"
dl "Top Gun (handheld).gnw"
dl "Tropical Fish.gnw"
dl "Turtle Bridge.gnw"
dl "Vermin.gnw"

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${GREEN}${CHECK}${NC} Completed"




