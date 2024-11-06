#!/bin/bash

file=${1:? nincs név}
N=${2:? nincs szám}

if ! [ -f "$file" ]; then
    echo $file nem létezik
    exit 1
fi

if [ -w "$file" ] && ! [ -s "$file" ] ; then
    if echo $N >> "$file"; then
        echo ez is sikerült
    fi
else
    echo $file nem írható
fi
