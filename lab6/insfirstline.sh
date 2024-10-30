#!/bin/bash
# beszúr egy sztringet egy szöveges fájl első sorának végére
# Paraméterek:
#   $1 - eredeti fájl
#   $2 - új fájl 
#   $3 - szó
# hibák: mivel nem ellenőrizzük azt, hogy az eredeti fájl
# létezik, a hibakezelést az elindított parancsokra bízzuk
# ez nem a legjobb megoldás

#paraméterek átvétele:

f1=${1:? első fajlnév hiányzik}
f2=${2:? második fajlnév hiányzik}
szo=${3:? hiányzik a sztring}

#az első fájl első sorát egy változóba írjuk
elso=$( head -1 "$f1" )

#hozzáadjuk a szó paramétert
elso="${elso}${szo}"

#létrehozzuk az új fájl első sorát
echo "$elso" > "$f2"

#f2 -be másoljuk a többi sort f1-ből
tail -n +2 "$f1" >> "$f2" 

#mit kellene módosítani ahhoz, hogy ne új névvel jelenjen
#meg a módosított fájl, hanem ugyanazzal mint az eredeti név?

