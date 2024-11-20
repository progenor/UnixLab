#!/bin/bash
#ellenőrzi, hogy a megadott első paraméter sztring
#végén .txt végződés van
#és van ilyen nevű fájl
#tesztelés:
#   bash teszt_txt.sh a.txt

if [[ -z "$1" ]]; then
    echo "kérek egy paramétert, egy fájl nevet!"
    exit 1
fi

file="$1"

#.txt végződésű a név?
if [[ $file =~ .+\.txt$ ]]; then
    echo a paraméter sztring vegződése '.txt'
else
    echo nem .txt típusú fájlnév
    exit 1
fi

if [[ ! -f "$file" ]]; then
    echo "$file" nem létezik
    exit 1
else
    echo van "$file" nevű fájl
fi
