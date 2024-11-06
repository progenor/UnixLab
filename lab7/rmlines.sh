#!/bin/bash
#töröl egy szöveges fájlt, ha több sora van mint N
#paraméterek:
# 1: fájlnév
# 2: N, a sorok száma
# használat:
#   rmlines.sh big.txt 5000

#paraméter átmásolás változókba
file=${1:? nincs fájl}
N=${2:? nincs sorok száma paraméter}

if [[ -f "$file" ]]; then # ha reguláris fájl
    L=$(wc -l <"$file")   # a fájl sorainak száma

    echo "$file létezik, $L sor"

    if [[ $L -gt $N ]]; then # -gt: greater than
        rm -iv "$file"
    else
        echo "a fájlban csak $L sor van"
    fi
else
    echo "nincs $file nevű fájl"
fi
