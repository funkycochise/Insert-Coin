
exec 3>&1
special_echo () {
    echo "$@" >&3
}
exec &>/dev/null

function fileExist()
{
   #echo "$2"
   local  myresult='false'
   if test -f "$2"; then
      myresult='true'
   fi
    local  __resultvar=$1
    #local  myresult='some value'
    eval $__resultvar="'$myresult'"
}

fileExist result "/media/fat/menu/menu_0.rbf"
if [ "$result" = "true" ]; then
   mv /media/fat/menu.rbf /media/fat/menu_.rbf
   cp /media/fat/menu/menu_0.rbf /media/fat/menu.rbf
   rm -r /media/fat/menu_.rbf
fi

cd /media/fat
echo "Installing custom Menu"
if [ -d "/media/fat/Menu_" ]; then
   rm /media/fat/Menu_
fi

special_echo "Menu updated"
special_echo ""

https://github.com/funkycochise/Insert-Coin/blob/main/menu_0.rbf