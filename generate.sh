#/bin/bash

for file in $(find -name '*.pdf'); do
    dir="${file%/*}"
    filename="${file%.*}"
    echo $dir
    echo $filename
    echo $file "$filename.png"
done