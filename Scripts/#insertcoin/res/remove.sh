


search_dir=/media/fat/Scripts/#insertcoin/res/
target=/media/fat_Arcade
for entry in "$search_dir"/*.mra
do
  rm -r "$target/$entry"
done


