#!/bin/bash

# Sript directions: ./convert.sh {img_file} {target_dir}

img="$1"
target_dir="/app/config_dir"
src_dir="/app/target_dir"
file="${img##*/}"

new_img="${file%.*}"

echo "converting $src_dir/$file to $target_dir/${new_img}.btf"

convert $src_dir/$file tiff64:$target_dir/$new_img.btf
