#!/bin/bash
#soronként olvassa a végrehajtó shell
#standard bemenetét, a sorok elé írja a hosszukat
#
#indítás: bash while4.sh < teszt.txt
#ha nem adunk meg átirányítást, akkor a standard bemenetről olvas

#amíg nincs vége a fájlnak

file=${1:?nincs para}

if [[ ! -f $file ]]; then
    echo nincs file
    exit 1
fi

lh=0
lhs=""
while read -r sor; do
    #a {} szerkezetben a név elé írt # a sztring hosszának
    # helyettesítését oldja meg a sztring értéke helyett
    h=${#sor}
    if ((h > lh)); then
        lh=$h
        lhs="$sor"
    fi
done <"$file"
echo $lhs $lh
