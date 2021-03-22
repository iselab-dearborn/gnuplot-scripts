#/bin/bash

for file in $(find -name '*.pdf'); do
    dir="${file%/*}"
    filename="${file%.*}"
    echo $dir
    echo $filename
    magick $file "$dir/$filename.png"
done