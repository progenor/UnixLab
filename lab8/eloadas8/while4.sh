#!/bin/bash
#soronként olvassa a végrehajtó shell
#standard bemenetét, a sorok elé írja a hosszukat
#
#indítás: bash while4.sh < teszt.txt
#ha nem adunk meg átirányítást, akkor a standard bemenetről olvas

#amíg nincs vége a fájlnak
while read sor; do
    #a {} szerkezetben a név elé írt # a sztring hosszának
    # helyettesítését oldja meg a sztring értéke helyett
    echo ${#sor} "$sor"
done
