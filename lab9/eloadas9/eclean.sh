#!/bin/bash
#törli az üres sorokat egy könyvtár szöveges állományaiból
#csak az egrep-et használjuk
#  (és a sed-et nem - a sed egyszerűbben megoldja a feladatot)
#Paraméterek:
#   $1 - célkönyvtár neve
# teszt könyvtár készítés:
#    cp -rp yes yes1
# futtatás:
#    bash eclean.sh yes1

#paraméter átvétel
d=${1:? kell egy paraméter: a könyvtárnév}

shopt -s nullglob
#végigjárjuk a cél fájlokat
for cel in "$d"/*; do
    #ellenőrzöm, hogy a fájl valóban szöveges
    if ! file "$cel" | egrep -q 'text'; then
        echo "$cel" kihagyva
        continue
    fi

    #van-e üres sor
    ures=$(egrep -c '^$' "$cel")

    if ((ures != 0)); then
        #ideiglenes fájl
        tmp=$(mktemp)

        #ideiglenes fájlba megy az üres sorok nélküli fájl
        # -v opció: azokat a sorokat írja ki amelyekre nincs illesztés
        egrep -v '^$' "$cel" >"$tmp"
        #átnevezés
        mv "$tmp" "$cel"
        echo "$cel" "$ures" sor törölve

    else
        echo "$cel" nincs üres sor
    fi

done
