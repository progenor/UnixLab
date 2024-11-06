#!/bin/bash
#kiírja a fájlok listáját egy könyvtárból
#Paraméterek:
# 1: könyvtár
#használat
#
#  bash file_lista.sh adatok
#

d=${1:? nincs könyvtárnév}

for f in "$d"/* 
do
    echo "$f"
done 




