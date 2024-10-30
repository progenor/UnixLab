#!/bin/bash
# kilistázza egy fájl n.-dik sorát
#
# paraméterek:
#   $1 - fájl név
#   $2 - egész szám, ha nem adjuk meg akkor 1
#példa futtatás:  ./printline.sh tiz.txt 2

#álljon le hibára
set -e

#paraméterek átvétele saját változóba 
#egyúttal ellenőrizni is lehet őket

file=${1:? hiányzik a fájlnév}
N=${2:-1}

#az N.-től a fájl végéig majd abból az elsőt
tail -n +"$N" "$file" | head -n 1

