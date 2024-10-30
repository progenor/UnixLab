#!/bin/bash
#kiírja egy soronként  számjegyeket tartalmazó fájl 
#első N sorát rendezve - a legnagyobb N darab számot
#a bemeneti fájlban minden szám külön soron kell legyen

#ha nem adjuk meg N-t, akkor az első ötöt írja ki
#parancssori paraméterek:
#   1: fájlnév kötelező
#   2: N - hány számot írjon ki, alapértelmezetten 5

#példa futtatás: 
#           ./legnagyobb.sh szamok.txt 2

#áttesszük a paramétereket változókba
file=${1:? nincs fájlnév}
#a második paraméter hiányozhat, ekkor értéke 5
db=${2:-5}

#rendezzük fordítva numerikusan és kiírunk N vagy 5 sort
sort -nr "${file}" | head -"$db"