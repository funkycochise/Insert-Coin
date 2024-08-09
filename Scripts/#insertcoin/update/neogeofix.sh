#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

TEMP=/media/fat/scripts/temp
SD=/media/fat
USB=/media/usb0
CIFS=/media/fat/cifs
ARCHIVE_MERGED=https://ia804504.us.archive.org/4/items/mame-merged/mame-merged
ARCHIVE_NEOGEO=https://ia904607.us.archive.org/28/items/mister-neogeo-pack

source <(grep setup_res $ini)
setup_res="${setup_res:0:3}"
#echo "setup_res: $setup_res"

TEMP=/media/fat/Scripts/temp
SD=/media/fat
USB=/media/usb0
CIFS=/media/fat/cifs

icmainres=https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/
res="/media/fat/Scripts/#insertcoin/res"
temp="/media/fat/Scripts/temp"
mra=$res/_Arcade
mgl=$res/mgl

neogeo=$games/neogeo

function identify_folder {

#echo "identify_folder"

if [ "$setup_res" == "USB" ]; then
  des_games=$USB/games
  des_mame=$des_games/mame
  des_neogeo=$des_games/NEOGEO
  des_arcade=$USB/_Arcade
  des_core=$des_arcade/cores
  des_alt=$des_arcade/_alternatives
elif [ "$setup_res" == "CIF" ]; then
  des_games=$CIFS/games
  des_mame=$des_games/mame
  des_neogeo=$des_games/NEOGEO
  des_arcade=$CIFS/_Arcade
  des_core=$des_arcade/cores
  des_alt=$des_arcade/_alternatives
else
  des_games=$SD/games
  des_mame=$des_games/mame
  des_neogeo=$des_games/NEOGEO
  des_arcade=$SD/_Arcade
  des_core=$des_arcade/cores
  des_alt=$des_arcade/_alternatives
fi

if ! [ -d "$des_arcade" ]; then
   echo "creating $des_arcade"
   mkdir $des_arcade
fi
if [ ! -d "$TEMP" ] 
then
   mkdir "$TEMP"
fi 

}

function cleanmra {

   #echo "Cleaning mra replaced by mgl in $des_arcade"

   if [ "$TERM" == "linux" ]; then
      #GUI
      echo -n -e "   "
   fi

   #list every mgl and look for existing matching mra
   for file in $des_arcade/*.mgl; do
      #echo "$file"
      f=$(basename -- "$file")
      if [ -f "$file" ];
      then
         mraeq="${f:0:${#f} -4 }.mra"
         #echo "mraeq: $mraeq"
         #if [ ! -f "$des_arcade/$f" ]; then
         #   echo -e "\r$des_arcade/$f                                                   "
         #fi
         if [ -f "$des_arcade/$mraeq" ]; then
            echo -e "\rdeleting mra: $des_arcade/$mraeq                                             "
            rm -r "$des_arcade/$mraeq"
         fi
      fi
   done
   #echo -e "${GREEN}${CHECK}${NC} Completed"
}


function neo {
    romzip=$1

    FILE=$des_neogeo/$romzip
    if ! test -f "$des_neogeo/$romzip"; then
       if test -f "$des_mame/$romzip"; then
          mv $des_mame/$romzip $des_neogeo/$romzip
          if [ "$TERM" == "linux" ]; then
             #GUI
             echo -e "\r   ${BLUE}${CHECK}${NC} $romzip                                            "
          else
             echo -e "\r${BLUE}${CHECK}${NC} $romzip                                            "
          fi
       else
          if [ "$TERM" == "linux" ]; then
             #GUI
             echo -n "   downloading $romzip"
          else
             echo -n "downloading $romzip"    
          fi
          if ! test -f "$des_neogeo/$romzip"; then
             #echo "$des_neogeo/$romzip doesn't exist"
             wget $ARCHIVE_NEOGEO/$romzip -P $TEMP -q
             mv $TEMP/$romzip $des_neogeo/$romzip
             if [ "$TERM" == "linux" ]; then
                #GUI
                echo -e "\r   ${BLUE}${CHECK}${NC} $romzip                                            "
             else
                echo -e "\r${BLUE}${CHECK}${NC} $romzip                                            "
             fi
          fi
       fi
    fi
}

#add adds the needed files to make neogeo core to work
function addon {
#echo "NeoGeo Addon installation"

romzip="neo.zip"
rm -r  /media/fat/Scripts/temp
mkdir /media/fat/Scripts/temp
wget $ARCHIVE_NEOGEO/$romzip -P $TEMP -q
unzip -qq /media/fat/Scripts/temp/neo.zip -d /media/fat/Scripts/temp
rm -r /media/fat/Scripts/temp/neo.zip
cd /media/fat/Scripts/temp
for f in $(ls ./*)
do
   target="${f:2:${#f}}"
   #echo "target: $target"
   if ! test -f "$des_neogeo/$target"; then
      mv "$TEMP/$target" "$des_neogeo/$target"
   fi
done

#echo -e "${GREEN}${CHECK}${NC} Completed"
}

function cleanrom {

   #echo "Cleaning neogeo roms in in $neogeo"

   if ! test -d "$des_games"; then
      mkdir "$des_games"
   fi
   if ! test -d "$des_neogeo"; then
      mkdir "$des_neogeo"
   fi

   neo "2020bb.zip"
   neo "3countb.zip"
   neo "alpham2.zip"
   neo "androdun.zip"
   neo "aodk.zip"
   neo "aof.zip"
   neo "aof2.zip"
   neo "aof2a.zip"
   neo "aof3.zip"
   neo "badapple.zip"
   neo "bakatono.zip"
   neo "bangbead.zip"
   neo "bjourney.zip"
   neo "blazstar.zip"
   neo "breakers.zip"
   neo "breakrev.zip"
   neo "brningfh.zip"
   neo "brningfp.zip"
   neo "brnngfpa.zip"
   neo "bstars.zip"
   neo "bstars2.zip"
   neo "burningf.zip"
   neo "Cabalng.zip"
   neo "crswd2bl.zip"
   neo "crsword.zip"
   neo "ctomaday.zip"
   neo "cyberlip.zip"
   neo "diggerma.zip"
   neo "doubledr.zip"
   neo "dragonsh.zip"
   neo "eightman.zip"
   neo "fatfursp.zip"
   neo "fatfury1.zip"
   neo "fatfury2.zip"
   neo "fatfury3.zip"
   neo "fbfrenzy.zip"
   neo "fghtfeva.zip"
   neo "fightfev.zip"
   neo "flipshot.zip"
   neo "froman2b.zip"
   neo "galaxyfg.zip"
   neo "ganryu.zip"
   neo "garou.zip"
   neo "ghostlop.zip"
   neo "goalx3.zip"
   neo "gowcaizr.zip"
   neo "gpilots.zip"
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
   neo "mahretsu.zip"
   neo "matrim.zip"
   neo "miexchng.zip"
   neo "minasan.zip"
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
   neo "neofight.zip"
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
   neo "quizkof.zip"
   neo "ragnagrd.zip"
   neo "rbff1a.zip"
   neo "rbff2.zip"
   neo "rbffspec.zip"
   neo "ridhero.zip"
   neo "roboarmy.zip"
   neo "rotd.zip"
   neo "s1945p.zip"
   neo "samsh5pf.zip"
   neo "samsh5sp.zip"
   neo "samsho.zip"
   neo "samsho2.zip"
   neo "samsho3.zip"
   neo "samsho4.zip"
   neo "samsho4k.zip"
   neo "samsho5.zip"
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
}


function clean_mame {
   #echo "Cleaning neogeo roms in $des_mame"

   #list every mame rom in neogeo
   for file in $des_neogeo/*.zip; do
      #echo "$file"
      f=$(basename -- "$file")
      #echo "found: $f"
      if [ -f "$file" ];
      then
         if [ -f "$des_mame/$f" ]; then
            echo -e "\rdeleting mame rom : $des_mame/$f                                             "
            rm -r "$des_mame/$f"
         fi
      fi
   done
   #echo -e "${GREEN}${CHECK}${NC} Completed"
}

identify_folder
echo "Cleaning mra replaced by mgl in $des_arcade"
cleanmra
if [ -f "$des_mame/mslug.zip" ]; then
   echo "Moving all neogeo roms from $des_mame to $des_neogeo"
   cleanrom
   clean_mame
fi
addon
echo -e "${GREEN}${CHECK}${NC} Completed"
#remove temporary
rm -r /media/fat/Scripts/temp

