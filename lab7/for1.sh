#!/bin/bash
#parancssor végigjárása for ciklussal
#a parancssoron egy fájlnév lista, lesz pl.: a.sh b.sh
#ha a fájl végrehajtható, átviszi a ./bin könyvtárba
#példa futtatás:
#készítsünk két .sh fájlt:
#   touch a.sh b.sh
#utána:
#   chmod u+x a.sh b.sh
#majd:
#  ./for1.sh a.sh b.sh

if ! [[ -d bin ]]; then
    echo nincs ./bin könyvtár
    exit 1
fi

#ciklus minden parancssoron megadott fájlra
for file; do
    if [[ -x "$file" ]]; then #végrehajtható
        mv -v "$file" ./bin
    else
        echo "$file" nincs vagy nem végrehajtható
    fi
done
