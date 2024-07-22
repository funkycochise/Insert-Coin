
clear

search_dir=/media/fat/Scripts/#insertcoin/res
target=/media/fat/_Arcade
for entry in "$search_dir"/*.mra
do
  #echo "$entry"
  #echo "$search_dir$entry"
  echo "$target$entry"
  #cp "$search_dir$entry" "$target$entry"
done


