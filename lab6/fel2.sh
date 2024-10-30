#!/usr/bin/env bash

file=${1:? nincs nev}
if [ -f $file ]; then
    echo "A $file fajl letezik."
else
    echo "A $file fajl nem letezik."
fi

echo "$file"
