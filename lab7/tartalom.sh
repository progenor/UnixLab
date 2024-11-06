#!/bin/bash
#tartalomjegyzéket készít txt fájlok első sorát használva:
#a generált tartalom.txt formája:
#   fájlnév : fájl első sora (versike címe)
#paraméterek:
# 1 : könyvtárnév
#Például:
#      tartalom.sh yes

shopt -s nullglob

if [[ -z "$1" ]]; then #ha nincs paraméter, akkor hiba
    echo hiányzik a könyvtárnév
    exit 1
fi

d="$1" #áttesszük a nevet a d változóba

if cd "$d" 2>/dev/null; then #belép
    echo a bejárt könyvtár: "$d"

    #ha már van tartalom.txt letörli
    [[ -f tartalom.txt ]] && rm tartalom.txt

    #ciklus minden megadott fájlra
    for file in *.txt; do
        echo -n "$file : " >>tartalom.txt
        head -1 "$file" >>tartalom.txt
    done
    echo tartalom.txt elkészült
else
    echo "$d" könyvtár nem elérhető
fi
