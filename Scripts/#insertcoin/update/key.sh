 # !/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

#echo "key download"

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   Installing latest key"
else
   echo -n -e "Installing latest key"
fi 

rm -r /media/fat/Scripts/temp/
mkdir /media/fat/Scripts/temp/

cd /media/fat/Scripts/temp
wget --ftp-user=mister --ftp-password=Jtbeta27185# --method=ftpmethod --quiet ftp://chihiro54.synology.me:22321/rootshare/jtbeta.zip

if test -f "/media/fat/Scripts/temp/jtbeta.zip"; 
then
   if test -f "/media/fat/games/mame/jtbeta.zip"; 
   then
     rm -r /media/fat/games/mame/jtbeta.zip
     echo  -e " into /media/fat/games/mame/jtbeta.zip"
     mv /media/fat/Scripts/temp/jtbeta.zip /media/fat/games/mame/jtbeta.zip
   fi
fi

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${GREEN}${CHECK}${NC} Completed"
