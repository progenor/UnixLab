#!/bin/bash
#törli a fájlt ha 0 a hossza
#paraméter:
# 1: az első argumentum a fájlnév

file=${1:? hiányzik a fájlnév}

#feltételezzük, hogy a munkakönyvtárban van (.)
#lehet-e törölni: írható-e a munkakönyvtár
if [[ -w . ]]; then
    #ha a fájl létezik
    if [[ -f "$file" ]]; then
        #ha nem üres
        if [[ -s "$file" ]]; then
            echo "$file" nem üres
        else
            rm -vi "$file"
        fi
    else
        echo "$file" nem igazi fájl
    fi
else
    echo a könyvtárból nem lehet törölni
fi

#feladat: ha a fájl nincs a munkakönyvtárban,
#hanem abszolút vagy relatív elérési úttal adtuk meg
#hogyan oldanánk meg?
#ötletek: basename, dirname
