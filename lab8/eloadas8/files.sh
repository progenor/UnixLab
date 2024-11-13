#!/bin/bash
#fájlokat listáz egy könyvtárból a méretük sorrendjében
#opciók:
#  -s  írja ki a méretüket
#  -n N  csak az első N darabot
#használat:
#   bash files.sh [ -s ] [ -n N ] yes
#
# kötelezően elől az opciók és utána a könyvtárnév

size=  #listázza a méreteket
count= #csak N állományt listáz

while (($# > 0)); do
    case "$1" in
    -s) size=ok ;;
    -n)
        shift
        count="$1"
        if [[ -z "$count" ]]; then
            echo hiányzik a -n argumentuma
            exit 1
        fi
        ;;
    -*)
        echo ismeretlen opció: "$1"
        exit
        ;;
    *) break ;;
    esac
    shift
done

d="$1"
if [[ -z "$d" ]]; then
    echo hiányzik a könyvtárnév
    exit 1
fi

cd "$d" || exit 1

if [[ -n "$count" ]]; then
    lista=$(ls -1S | head -"$count")
else
    lista=$(ls -S)
fi

for f in $lista; do
    if [[ -n "$size" ]]; then
        h=" méret: $(wc -c <"$f") byte"
    else
        h=""
    fi
    echo "$f $h"
done
