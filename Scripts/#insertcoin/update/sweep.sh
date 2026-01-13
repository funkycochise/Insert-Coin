
function removedir {

   if [ -d "$1" ];then
      echo "removing $1"
      rm -r "$1"
   fi
}

removedir "/media/fat/_Insert Coin"
removedir "/media/fat/_#Insert-Coin"
removedir "/media/fat/_Arcade/_Insert Coin"
removedir "/media/fat/_Arcade/_#Insert-Coin"
removedir "/media/fat/_Arcade/_#Insert_Coin"