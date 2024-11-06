#!/bin/bash
#fájl bejárás a ls kimenetén
#nem ajánlott, ha a fájl nevekben szóköz van, shellcheck:
#Iterating over ls output is fragile. Use globs.shellcheck SC2045
#paraméter:
# 1: könyvtár neve ahol a fájlok vannak

dir=${1:? nincs könyvtárnév}

# shellcheck disable=SC2045
for file in $(ls "$dir"/*) ; do
    echo "$file"
done

#vagy:

cd "$dir" || exit 1
# shellcheck disable=SC2045
for file in $(ls) ; do
    echo "$file"
done

#figyelem, hogyan néz ki "$file" a két esetben
