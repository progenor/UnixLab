#!/bin/bash
#kiírja egy könyvtár szöveges állományaiban 
#leggyakrabban használt szavakat
#paraméterek:
# 1: könyvtárnév
# 2: hány szót írjon ki, ha nincs megadva akkor = 10
#használat:
#  ./wstat.sh yes

#álljon le ha hiba történik
set -e

#változó ellenőrzés
d=${1:? nincs könyvtárnév}
N=${2:-10}

#belép a könyvtárba, ha nincs könyvtár akkor hiba és kilép
cd "$d"


#ha egy parancssor túl hosszú, fel lehet írni több sorban, de
#a folytatódó sorokat egy \ karakterrel kell zárni,
#a \ után nem jöhet más karakter, szóköz sem !

#alternatív, az alábbi parancs működik, ha a \ jeleket kivesszük a sor végéről
#mert a csővezeték esetében folytatja a shell a parancsot a következő sorban
#van még néhány ilyen kivétel eset, de a \ mindig működik

#kiírja az összes szöveget és elvégzi a számítást
cat ./*.txt | \
    tr '[:upper:]' '[:lower:]' | \
    tr -c '[:lower:]' "\n" | \
    sort | uniq -c | \
    sort -nr -k 1,1 | \
    head -n "$N" | \
    tail -n +2

