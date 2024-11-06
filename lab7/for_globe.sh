#!/bin/bash
#ajánlott fájl bejárás
#paraméter:
# 1: könyvtár neve ahol a fájlok vannak

#ha üres a könyvtár ezzel az opcióval ad a shell
#üres sztringet a *-ra (globe)
shopt -s nullglob

dir=${1:? nincs könyvtárnév}

for file in "$dir"/* ; do
    echo "$file"
done

#vagy:

cd "$dir" || exit 1
for file in * ; do
    echo "$file"
done

#figyelem, hogyan néz ki "$file" a két esetben
