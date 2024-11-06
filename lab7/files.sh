#!/bin/bash
#mire kell odafigyelni, ha fájlokat kell bejárni?

#a szkript paramétere egy könyvtárnév
if [[ -z "$1" ]]; then
    echo nincs könyvtárnév
    exit 1
fi

d="$1" # d-ben lesz a könyvtárnév

# kell cd , nem kell cd ?
# üres könyvtár ?
# hiba kiírások ?

shopt -s nullglob #ha üres a könyvtár
for f in "$d"/*.txt; do
    echo "$f"
done
