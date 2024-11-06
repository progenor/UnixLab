#!/bin/bash

f1=${1:? 1 nincs}
f2=${2:? 2 nincs}

if [ "$f1" = "$f2" ]; then
    echo a két név ugyanaz
    exit 1
fi

if cmp "$f1" "$f2" 2>/dev/null
then
    echo ok
else
    echo nem ok
fi
