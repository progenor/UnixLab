#!/bin/bash
#egyszerű backup, nem csinál többet, mint a cp parancs
#de egyenként kezeli a fájlokat
# $1 forrás könyvtár
# $2 cél könyvtár, létrehozza ha nem létezik
#használat:
#       bash backsize.sh adatok adatok1

if (($# != 2)); then
    echo használat: "$(basename "$0")" forrás cél
    exit 1
fi

#áttesszük változókba a paramétereket
d="$1"
d1="$2"

#ha nincs cél, létrehozza
mkdir -p "$d1"

#végiglépkedünk a fájlokon
for f in "$d"/*.jpg; do
    #itt másolunk egyenként
    cp "$f" "$d1" && echo "$f" másolva
done
