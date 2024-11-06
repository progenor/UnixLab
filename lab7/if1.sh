#!/bin/bash
#if példa
#egy szöveget fűzünk a fájl végére
#ha  a fájl írható

szoveg="Ezt írjuk a fájl végére."
file="1.txt"

#létezik és írható a fájl?

if [[ -w "$file" ]]; then
    echo "$szoveg" >>"$file"
else
    echo "$file" nem írható
fi
