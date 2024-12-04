#!/bin/bash
#munkát végző szkript, kiírja a leggyakoribb szavakat
#egy angol szövegből
#ha a szöveg hosszú, sokat fut
#leggyakoribb szavak, használat:
#használat:
#      ./munka.sh b.txt

f=${1:? nincs fájl}

tr '[:upper:]' '[:lower:]' <"$f" | \
    egrep -o '[a-z]+' | \
    sort | \
    uniq -c | \
    egrep -w -v -f english.stop | \
    sort -nr -k1,1 
