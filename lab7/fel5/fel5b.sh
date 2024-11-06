#!/usr/bin/env bash

dir=${1:? No directory set}

if [ ! -d $dir ]; then
    echo "Directory does not exist or is not a directory"
    exit 1
fi

for file in "$dir"/*; do
    if [[ ! -f $file ]]; then
        continue
    fi
    s=$(wc -c <"$file")
    echo "File: $file : $s bytes"

done
