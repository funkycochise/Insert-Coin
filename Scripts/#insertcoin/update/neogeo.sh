 # !/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

TEMP=/media/fat/Scripts/temp
SD=/media/fat
USB=/media/usb0

source <(grep setup_mame $ini)
setup_mame="${setup_mame:0:3}"
#echo "setup_mame: $setup_mame"

function identify_folder {

#detection of plugged USB drive
#if [ -d "$USB" ]; then
#   #USB plugged becomes the target drive instead of SD card
#   des_games=$USB/games
#   des_mame=$des_games/mame
#else
   des_games=$SD/games
   des_mame=$des_games/mame
#fi
if ! [ -d "$des_games" ]; then
   mkdir $des_games
fi
if ! [ -d "$des_mame" ]; then
   mkdir $des_mame
fi
if [ ! -d "$TEMP" ] 
then
   mkdir $TEMP
fi 
}


function dlf {

    FILE=$des_mame/$1
    #echo "dl : $des_mame/$1"

    wget -q -c -P /media/fat/Scripts/temp \https://archive.org/download/insert_coin_mame/$1
    touch /media/fat/Scripts/temp/$1
    mv /media/fat/Scripts/temp/$1 $des_mame/$1
}

function dl {

    FILE=$des_mame/$1
    #echo "dl : $des_mame/$1"

    if ! test -f "$FILE"; then
      #file doesn not exists
      echo -n "downloading $1"   
      wget -q -c -P /media/fat/Scripts/temp \https://archive.org/download/insert_coin_mame/$1
      touch /media/fat/Scripts/temp/$1
      mv /media/fat/Scripts/temp/$1 $des_mame/$1
      echo -e "\r${BLUE}${CHECK}${NC} $1                                            "

   #else
    # echo "$1 already exixts"
   fi

}

function xml {
echo "$TEMP"
echo -e "${BLUE}${CHECK}${NC} romsets.xml" 
rcode=$(curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/romsets.xml -O -k -s --output $TEMP/romsets.xml >/dev/null)
if [[ "$rcode" -ne 0 ]]; then
    echo "Failed to download file romsets.xml"
else
   if [ -f "$NEOGEO/romsets.xml" ]; then
      #backup
      if ! [ -f "$NEOGEO/romsets.bak" ]; then
         echo "backup created $NEOGEO/romsets.bak"
         mv "$NEOGEO/romsets.xml" "$NEOGEO/romsets.bak"
      fi
   fi
   mv $TEMP/romsets.xml $NEOGEO/romsets.xml
   touch $NEOGEO/romsets.xml
   echo -e "\r${BLUE}${CHECK}${NC} $NEOGEO/romsets.xml"
fi
}


function neo {

    #echo "des_mame $des_mame"

    FILE=$des_mame/$1
    FILENEO=$NEOGEO/$1 
    #echo "retrieving $FILENEO"

    if ! test -f "$FILENEO"; then
       if test -f "$FILE"; then
          echo -n "copying $FILENEO"   
          mv "$FILE" "$FILENEO"
       else
         echo -n "downloading $1"         
         wget -q -c -P /media/fat/Scripts/temp \https://archive.org/download/mister-neogeo-pack/$1
         touch /media/fat/Scripts/temp/$1
         echo -e "\r${BLUE}${CHECK}${NC} $FILENEO                                            "
         touch $FILENEO
         mv /media/fat/Scripts/temp/$1 $FILENEO
       fi
    fi
    #final cleanup for mame folder
    
    if test -f "$FILE"; then
      rm -r $FILE
      echo -n "removing $FILE"
    fi

}

identify_folder

echo "Updating neogeo roms $des_mame"

#delete all zero file in games/mame
find "/media/fat/games/mame" -size 0 -delete


#dlf "neogeo.zip"
neo "2020bb.zip"
neo "3countb.zip"
neo "alpham2.zip"
neo "androdun.zip"

neo "aodk.zip"
neo "aof.zip"
neo "aof2.zip"
neo "aof3.zip"
neo "b2b.zip"
neo "b2b2.zip"
neo "b2b2d.zip"
neo "bakatono.zip"
neo "bangbead.zip"
neo "bjourney.zip"
neo "blazstar.zip"
neo "breakers.zip"
neo "breakrev.zip"
neo "bstars.zip"
neo "bstars2.zip"
neo "burningf.zip"
neo "Cabalng.zip"
neo "crsword.zip"
neo "crswd2bl.zip"
neo "ctomaday.zip"
neo "cyberlip.zip"
neo "diggerma.zip"
neo "doubledr.zip"
neo "dragonsh.zip"
neo "eightman.zip"
neo "fatfury1.zip"
neo "fatfury2.zip"
neo "fatfury3.zip"
neo "fatfursp.zip"
neo "fbfrenzy.zip"
neo "fightfev.zip"
neo "flipshot.zip"
neo "froman2b.zip"
neo "galaxyfg.zip"
neo "ganryu.zip"
neo "garou.zip"
neo "ghostlop.zip"
neo "gpilots.zip"
neo "goalx3.zip"
neo "gowcaizr.zip"
neo "gururin.zip"
neo "ironclad.zip"
neo "irrmaze.zip"
neo "janshin.zip"
neo "joyjoy.zip"
neo "kabukikl.zip"
neo "karnovr.zip"
neo "kizuna.zip"
neo "kof2000.zip"
neo "kof2001.zip"
neo "kof2002.zip"
neo "kof2003.zip"
neo "kof94.zip"
neo "kof95.zip"
neo "kof96.zip"
neo "kof97.zip"
neo "kof98.zip"
neo "kof99.zip"
neo "kotm.zip"
neo "kotm2.zip"
neo "lastblad.zip"
neo "lastbld2.zip"
neo "lasthope.zip"
neo "lbowling.zip"
neo "legendos.zip"
neo "lresort.zip"
neo "magdrop2.zip"
neo "magdrop3.zip"
neo "maglord.zip"
neo "matrim.zip"
neo "miexchng.zip"
neo "moshougi.zip"
neo "mslug.zip"
neo "mslug2.zip"
neo "mslug2t.zip"
neo "mslug3.zip"
neo "mslug4.zip"
neo "mslug5.zip"
neo "mslugx.zip"
neo "mutnat.zip"
neo "nam1975.zip"
neo "ncombat.zip"
neo "ncommand.zip"
neo "neobombe.zip"
neo "neocup98.zip"
neo "neodrift.zip"
neo "neomrdo.zip"
neo "neothund.zip"
neo "ninjamas.zip"
neo "nitd.zip"
neo "overtop.zip"
neo "panicbom.zip"
neo "pbobbl2n.zip"
neo "pbobblen.zip"
neo "pgoal.zip"
neo "pnyaa.zip"
neo "popbounc.zip"
neo "preisle2.zip"
neo "pspikes2.zip"
neo "pulstar.zip"
neo "puzzldpr.zip"
neo "puzzledp.zip"
neo "quizdai2.zip"
neo "quizdais.zip"
neo "quizdask.zip"
neo "quizkof.zip"
neo "quizkofk.zip"
neo "ragnagrd.zip"
neo "rbff1a.zip"
neo "rbff2.zip"
neo "rbffspec.zip"
neo "ridhero.zip"
neo "roboarmy.zip"
neo "rotd.zip"
neo "s1945p.zip"
neo "samsho.zip"
neo "samsho2.zip"
neo "samsho3.zip"
neo "samsho4.zip"
neo "samsho4k.zip"
neo "samsho5.zip"
neo "samsh5pf.zip"
neo "samsh5sp.zip"
neo "savagere.zip"
neo "sbp.zip"
neo "sdodgeb.zip"
neo "sengoku.zip"
neo "sengoku2.zip"
neo "sengoku3.zip"
neo "shocktr2.zip"
neo "shocktro.zip"
neo "socbrawl.zip"
neo "sonicwi2.zip"
neo "sonicwi3.zip"
neo "spinmast.zip"
neo "ssideki.zip"
neo "ssideki2.zip"
neo "ssideki3.zip"
neo "ssideki4.zip"
neo "stakwin.zip"
neo "stakwin2.zip"
neo "strhoop.zip"
neo "superspy.zip"
neo "svc.zip"
neo "teot.zip"
neo "tophuntr.zip"
neo "totc.zip"
neo "tpgolf.zip"
neo "trally.zip"
neo "turfmast.zip"
neo "twinspri.zip"
neo "tws96.zip"
neo "viewpoin.zip"
neo "wakuwak7.zip"
neo "wh1.zip"
neo "wh2.zip"
neo "wh2j.zip"
neo "whp.zip"
neo "wjammers.zip"
neo "zedblade.zip"
neo "zintrckb.zip"
neo "zupapa.zip"
neo "turfmastscot.zip"
neo "TTE_shinobi.zip"
neo "TTE_goldenaxe.zip"

xml


cd /media/fat
rm -r "$TEMP"

echo -e "${GREEN}${CHECK}${NC} Completed"
