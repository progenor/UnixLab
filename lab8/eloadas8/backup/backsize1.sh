#!/bin/bash
#backup: mentést végez egy háttértárolóra
#annak érdekében, hogy helyet szabadítson fel
#meg kell adni neki, hogy hány megabyte-ot szabadítson fel
#alapértelmezetten jpg típusú fájlokat keres,
#de ezt meg lehet változtatni
#
# $1 forrás könyvtár
# $2 cél könyvtár, létrehozza ha nem létezik
# $3 egész szám, megabyte-ok száma: amennyit el kell költöztetni
# használat:
#       bash backsize1.sh adatok adatok1 4

if (($# != 3)); then
    echo használat: "$(basename "$0")" forrás cél megabyte
    exit 1
fi

#áttesszük változókba a paramétereket
d="$1"
d1="$2"
MB="$3"

#ha nincs cél, létrehozza
mkdir -p "$d1"

#ebben a változóban számoljuk, hogy mennyit vittünk át
#megabyte-ban számolunk felfelé kerekítve
mega=0

#ciklus a fájlokon
#akkor hibát ír ki az ls
shopt -s nullglob #ha üres a könyvtár
for f in "$d"/*.jpg; do

    #következő fájl mérete
    #a du -B opciója után lehet érni a mértéket, amiben a méretet
    #kiírja, pl:  -B1000 : 1000 byte lesz az egység
    #             -BM    : megabyte, de akkor a számok után írja az M-et
    #             -B1048576 : 1 MB = 1024*1024 = 1048567 byte, és csak számot ír ki
    h=$(du -B1048576 "$f" | cut -f1)

    #költöztetés
    mv "$f" "$d1" || exit 1 #ha nem sikerül kilép

    echo "$f" mérete "$h" M, elköltöztetve

    #számolom, mennyit vittünk át eddig
    ((mega += h))
    if ((mega >= MB)); then
        break # elértük a megadott mértéket
    fi
done

if ((mega != 0)); then #ha sikerült átvinni fájlokat
    echo $mega M elköltöztetve
else
    echo helyfelszabadítás nem sikerült #pl ha üres a $d könyvtár
fi
