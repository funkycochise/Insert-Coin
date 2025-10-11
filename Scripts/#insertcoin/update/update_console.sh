#!/bin/bash
source /media/fat/Scripts/#insertcoin/folders/functions.sh

loadsetup

function installPSX {
  curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/PSX.zip -O -k -s --output /media/fat/Scripts/temp/PSX.zip
  #wget /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/PSX.zip --quiet
  unzip -qq /media/fat/Scripts/temp/PSX.zip -d /media/fat/Scripts/temp
  rm -r /media/fat/Scripts/temp/PSX.zip
  #echo "remove previous PSX cores"
  #for f in $(ls /media/fat/_Console/PSX*.rbf )
  #do
  #   #echo "file $f"
  #   rm -r $f
  #done
  cd /media/fat/Scripts/temp
  installed="0"
  for f in $(ls ./*.rbf)
  do
    if [ "${f:2:3}" == "PSX" ];  then
       if [ "$dualsdram" == "0" ] || [ "$dualsdram" == "2" ]; then
          target="${f:2:${#f}}"
          #echo "move to $CONSOLE/$target"
          cp $f $CONSOLE/$target
          touch $CONSOLE/$target >/dev/null
          installed="1"
       fi
    elif [ "${f:2:4}" == "Dual" ];  then
       #echo "$dualsdram"
       if [ "$dualsdram" == "1" ] || [ "$dualsdram" == "2" ]; then
          target="PSX_Dual_${f:11:${#f}}"
          #echo "move to $CONSOLE/$target"
          cp $f $CONSOLE/$target
          touch $CONSOLE/$target >/dev/null
          installed="1"
       fi
    fi
    rm -r $f
  done
  if [ "$installed" == "1" ]; then
     #remove other core for the system
     #echo "find for PSX"
     find $CONSOLE -maxdepth 1 -type f -name "PSX*" ! -name "$target" -delete
     if [ "$TERM" == "linux" ]; then
        #GUI
        echo -n -e "   "
     fi
     echo -e "${BLUE}${CHECK}${NC} PSX"
  fi
}

function installS32X {
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/S32X.zip --quiet
  unzip -qq S32X.zip
  rm -r S32X.zip

  for f in $(ls ./*.rbf)
  do
    target=${f:2:${#f}}
    #echo "source: $f"
    #echo "target: $target"
    mv $f $CONSOLE/$target --force
    touch $CONSOLE/$target >/dev/null
    if [ "$TERM" == "linux" ]; then
       #GUI
       echo -n -e "   "
    fi
    #remove other core for the system
    #echo "find for S32X"
    find $CONSOLE -maxdepth 1 -type f -name "S32X*" ! -name "$target" -delete
    echo -e "${BLUE}${CHECK}${NC} S32X"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
}

function installSaturn {
  curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/Saturn.zip -O -k -s --output /media/fat/Scripts/temp/Saturn.zip
  unzip -qq /media/fat/Scripts/temp/Saturn.zip -d /media/fat/Scripts/temp
  rm -r /media/fat/Scripts/temp/Saturn.zip

  cd /media/fat/Scripts/temp
  installed="0"
  for f in $(ls ./*.rbf)
  do
    #echo "found : $f"
    if [ "${f:2:3}" == "STV" ];  then
       target="ST-V${f:12:${#f}}"
       #echo "STV:$stv $target"
       #echo "cp $f to $CORE/$target"
       cp $f $CORE/$target
       touch $CORE/$target >/dev/null
       find $CORE -maxdepth 1 -type f -name "ST-V*.rbf" ! -name "$target" -delete
    elif [ "${f:2:6}" == "Saturn" ];  then
          if [ "$dualsdram" == "0" ] || [ "$dualsdram" == "2" ]; then

             sattarget="${f:2:${#f}}"
             #echo "cp $f to $CONSOLE/$sattarget"
             cp $f $CONSOLE/$sattarget
             touch $CONSOLE/$sattarget >/dev/null
             installed="1"
          fi
    elif [ "${f:2:4}" == "Dual" ];  then
       trunc="${f:2:4}"
       echo "$trunc"
       if [ "$dualsdram" == "1" ] || [ "$dualsdram" == "2" ]; then
          dualsat="Saturn_Dual${f:13:${#f}}"
          #echo "cp $f to $CONSOLE/$dualsat"
          cp $f $CONSOLE/$dualsat
          touch $CONSOLE/$dualsat >/dev/null
          installed="1"
       fi
    fi

    rm -r $f
  done
  if [ "$installed" == "1" ]; then
     #echo "sattarget=$sattarget"
     #echo "dualsat=$dualsat"
     #find $CONSOLE -maxdepth 1 -type f -name "Saturn*.rbf"
     find $CONSOLE -maxdepth 1 -type f -name "Saturn*.rbf" ! -name $sattarget ! -name $dualsat -delete

     if [ "$TERM" == "linux" ]; then
        #GUI
        echo -n -e "   "
     fi
    #echo "find for Saturn $sattarget"
    echo -e "${BLUE}${CHECK}${NC} Saturn"
  fi
  
}

function installSGB {
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/SGB.zip --quiet
  unzip -qq SGB.zip
  rm -r SGB.zip

  for f in $(ls ./*.rbf)
  do
    target=${f:2:${#f}}
    #echo "source: $f"
    #echo "target: $target"
    mv $f $CONSOLE/$target --force
    touch $CONSOLE/$target >/dev/null
    if [ "$TERM" == "linux" ]; then
       #GUI
       echo -n -e "   "
    fi
    #remove other core for the system
    #echo "find for SGB"
    find $CONSOLE -maxdepth 1 -type f -name "SGB*" ! -name "$target" -delete
    echo -e "${BLUE}${CHECK}${NC} SGB"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
}

function installNeoGeo {
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/NeoGeo.zip --quiet
  unzip -qq NeoGeo.zip
  rm -r NeoGeo.zip

  for f in $(ls ./*.rbf)
  do
    target=${f:2:${#f}}
    #echo "source: $f"
    #echo "target: $target"
    mv $f $CONSOLE/$target --force
    touch $CONSOLE/$target >/dev/null
    if [ "$TERM" == "linux" ]; then
       #GUI
       echo -n -e "   "
    fi
    #remove other core for the system
    #echo "find for Neogeo"
    find $CONSOLE -maxdepth 1 -type f -name "NeoGeo*" ! -name "$target" -delete
    echo -e "${BLUE}${CHECK}${NC} Neogeo"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
}

function installN64 {
  GAMES=/media/fat/games/N64
  CONSOLE=/media/fat/_Console
  wget https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/N64.zip --quiet
  unzip -qq N64.zip
  rm -r N64.zip
  wget https://raw.githubusercontent.com/MiSTer-devel/N64_ROM_Database/main/N64-database.txt --quiet

  for f in $(ls ./*.*)
  do
    target=${f:2:${#f}}
    #echo "source: $f"
    #echo "target: $target"
    if [ "$target" == "boot.rom" ]; then
      #echo "boot.rom"
      if [ ! -d "$GAMES" ] 
      then
        mkdir $GAMES
      fi
      if [ ! -f "$GAMES/$target" ] 
      then
        cp $f $GAMES/$target
      fi
      rm -r ./$f
    elif [ "$target" == "boot1.rom" ]; then
      #echo "boot.rom"
      if [ ! -d "$GAMES" ] 
      then
        mkdir $GAMES
      fi
      if [ ! -f "$GAMES/$target" ] 
      then
        cp $f $GAMES/$target
      fi
      rm -r ./$f    
    elif [ "$target" == "N64-database.txt" ]; then
      #echo "N64-database.txt"
      #ls $f
      if [ -f "$GAMES/N64-database.txt" ] 
      then
        rm -r  $GAMES/N64-database.txt
      fi
      cp $f $GAMES/N64-database.txt
      touch $GAMES/N64-database.txt
      #if [ ! -f "$GAMES/$target" ] 
      #then
      #  cp $f $GAMES/$target
      #fi
      rm -r ./$f
    elif [ "${target:0:3}" == "N64" ]; then
      #echo "N64: $target"
      mv $f $CONSOLE/$target
      touch $CONSOLE/$target
      if [ "${#target}" -lt 22 ]; then
         if [ "${target:0:3}" == "N64" ]; then
            #remove other core for the system
            #echo "find for N64"
            find $CONSOLE -maxdepth 1 -type f -name "N64*" ! -name "$target" -delete
         fi
      else
        if [ "${target:0:9}" == "N64_Turbo" ]; then
            #remove other core for the system
            #echo "find for N64_Turbo"
            find $CONSOLE -maxdepth 1 -type f -name "N64_Turbo*" ! -name "$target" -delete
         fi
      fi
    fi
   
    #mv $f $CONSOLE/$target --force
    #touch $CONSOLE/$target >/dev/null

    #clean any file left
    #if test -f "./$f"; then
    #  rm -r ./$f
    #fi
  done
  if [ "$TERM" == "linux" ]; then
     #GUI
     echo -n -e "   "
  fi
  echo -e "${BLUE}${CHECK}${NC} N64"
}

function installJaguar {
  curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/Jaguar.zip -O -k -s --output /media/fat/Scripts/temp/Jaguar.zip
  #wget /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/Jaguar.zip --quiet
  unzip -qq /media/fat/Scripts/temp/Jaguar.zip -d /media/fat/Scripts/temp
  rm -r /media/fat/Scripts/temp/Jaguar.zip 

  cd /media/fat/Scripts/temp
  installed="0"
  for f in $(ls ./*.rbf)
  do
    #echo "file: $f"
    if [ "${f:2:6}" == "Jaguar" ];  then
       if [ "$dualsdram" == "0" ] || [ "$dualsdram" == "2" ]; then
          target="${f:2:${#f}}"
          #echo "move to $CONSOLE/$target"
          cp $f $CONSOLE/$target
          touch $CONSOLE/$target >/dev/null
          installed="1"
       fi
    elif [ "${f:2:4}" == "Dual" ];  then
       #echo "$dualsdram"
       if [ "$dualsdram" == "1" ] || [ "$dualsdram" == "2" ]; then
          target="Jaguar_Dual${f:13:${#f}}"
          #echo "move to $CONSOLE/$target"
          cp $f $CONSOLE/$target
          touch $CONSOLE/$target >/dev/null
          installed="1"
       fi
    fi
    rm -r $f
  done
  if [ "$installed" == "1" ]; then
     if [ "$TERM" == "linux" ]; then
        #GUI
        echo -n -e "   "
     fi
     #remove other core for the system
     #echo "find for Jaguar"
     find $CONSOLE -maxdepth 1 -type f -name "Jaguar*" ! -name "$target" -delete
     echo -e "${BLUE}${CHECK}${NC} Jaguar"
  fi
}


function installCDi {
  curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/CDi.zip -O -k -s --output /media/fat/Scripts/temp/CDi.zip
  #wget /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/CDi.zip --quiet
  unzip -qq /media/fat/Scripts/temp/CDi.zip -d /media/fat/Scripts/temp
  rm -r /media/fat/Scripts/temp/CDi.zip 

  cd /media/fat/Scripts/temp
  installed="0"
  for f in $(ls ./*.rbf)
  do
    #echo "file: $f"
    target="${f:2:${#f}}"
    #echo "target: $target"
    target="$f"
    mv $f $CONSOLE/$target
    touch $CONSOLE/$target >/dev/null
    installed="1"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
  if [ "$installed" == "1" ]; then
     #echo "target: $target"
     if [ "$TERM" == "linux" ]; then
        #GUI
        echo -n -e "   "
     fi
     #remove other core for the system
     #echo "find for CDi"
     target="${f:2:${#f}}"
     #echo "target: $target"
     find $CONSOLE -maxdepth 1 -type f -name "CDi*" ! -name "$target" -delete
     echo -e "${BLUE}${CHECK}${NC} CDi"
  fi
}


function installPCE {
  curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/TurboGrafx16.zip -O -k -s --output /media/fat/Scripts/temp/TurboGrafx16.zip
  #wget /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/TurboGrafx16.zip --quiet
  unzip -qq /media/fat/Scripts/temp/TurboGrafx16.zip -d /media/fat/Scripts/temp
  rm -r /media/fat/Scripts/temp/TurboGrafx16.zip 

  #echo "remove previous pce cores"
  #for f in $(ls /media/fat/_Console/TurboGrafx16*.rbf )
  #do
  #   #echo "file $f"
  #   rm -r $f
  #done

  cd /media/fat/Scripts/temp
  installed="0"
  for f in $(ls ./*.rbf)
  do
    #echo "file: $f"
    target="${f:2:${#f}}"
    #echo "TurboGrafx16 target: $target"
    target=$f
    mv $f $CONSOLE/$target
    touch $CONSOLE/$target >/dev/null
    installed="1"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
  if [ "$installed" == "1" ]; then
     if [ "$TERM" == "linux" ]; then
        #GUI
        echo -n -e "   "
     fi
     #remove other core for the system
     #echo "find for TurboGrafx16"
     target="${f:2:${#f}}"
     #echo "target: $target"
     find $CONSOLE -maxdepth 1 -type f -name "TurboGrafx16*" ! -name "$target" -delete
     echo -e "${BLUE}${CHECK}${NC} TurboGrafx16"
  fi
}

function installNES {

  curl /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/NES.zip -O -k -s --output /media/fat/Scripts/temp/NES.zip
  #wget /media/fat/Scripts/temp https://raw.githubusercontent.com/funkycochise/Insert-Coin_Res/main/NES.zip --quiet
  unzip -qq /media/fat/Scripts/temp/NES.zip -d /media/fat/Scripts/temp
  rm -r /media/fat/Scripts/temp/NES.zip 

  #echo "remove previous nes cores"
  #for f in $(ls /media/fat/_Console/NES*.rbf )
  #do
  #   #echo "file $f"
  #   rm -r $f
  #done

  cd /media/fat/Scripts/temp
  installed="0"
  for f in $(ls ./*.rbf)
  do
    #echo "file: $f"
    target="${f:2:${#f}}"
    #echo "NES target: $target"
    target=$f
    mv $f $CONSOLE/$target
    touch $CONSOLE/$target >/dev/null
    installed="1"
    #clean any file left
    if test -f "./$f"; then
      rm -r ./$f
    fi
  done
  if [ "$installed" == "1" ]; then
     if [ "$TERM" == "linux" ]; then
        #GUI
        echo -n -e "   "
     fi
     #remove other core for the system
     #echo "find for NES"
     target="${f:2:${#f}}"
     #echo "target: $target"
     find $CONSOLE -maxdepth 1 -type f -name "NES*" ! -name "$target" -delete
     echo -e "${BLUE}${CHECK}${NC} NES"
  fi
}



if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "Getting latest console cores"

if [ "$psx" == "1" ]; then
  installPSX
fi
if [ "$s32x" == "1" ]; then
  installS32X
fi
if [ "$saturn" == "1" ]; then
  installSaturn
fi
if [ "$sgb" == "1" ]; then
  installSGB
fi
if [ "$neogeo" == "1" ]; then
  installNeoGeo
fi
if [ "$n64" == "1" ]; then
  installN64
fi
if [ "$jaguar" == "1" ]; then
  installJaguar
fi
if [ "$cdi" == "1" ]; then
  installCDi
fi
if [ "$pce" == "1" ]; then
  installPCE
fi
if [ "$nes" == "1" ]; then
  installNES
fi

if [ "$TERM" == "linux" ]; then
   #GUI
   echo -n -e "   "
fi
echo -e "${GREEN}${CHECK}${NC} Completed"