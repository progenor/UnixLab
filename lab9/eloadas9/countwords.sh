#!/bin/bash
#a szkript kiírja, hányszor fordulnak elő egy szövegben
#a parancssoron felsorolt szavak
#paraméterek:
#   1: fájlnév
#   2: 3: ... szavak
# használat:
#    bash countwords.sh yes/igetup.txt the up down
#    the 7
#    up 8
#    down 8

#kell legalább 2 paraméter
if (($# < 2)); then
    echo használat: "$(basename "$0")" fájlnév szó1 szó2 ...
    exit 1
fi

szoveg="$1" #fájlnév

shift #kidobjuk a fájlnevet

#a szavak végigjárása
for szo in "$@"; do
    # az egrep opciók:  -i kis-nagybetű nem számít ,
    #                   -o csak a találatot írja,
    #                   -w csak teljes szavakat keressen
    N=$(tr "[:upper:]" "[:lower:]" <"$szoveg" | egrep -i -o -w "$szo" | wc -l)
    echo "$szo" "$N"
done
