#!/bin/bash
#ellenőrzi, hogy a parancssoron megadott fájl
#valóban szöveges fájl

#a példa a [[]] szerkezetet használja

if [[ -z "$1" ]]; then
    echo "kérek egy paramétert, egy fájl nevet!"
    exit 1
fi

f="$1"

if [[ ! -f "$f" ]]; then
    echo "$f" nem fájl
    exit 1
fi

#a file parancsot használjuk
#amennyiben a fájl valóban szöveges, a kimenet
#tartalmazza a text szót
#lásd  man file

if [[ $(file "$f") =~ text ]]; then
    echo a fájl szöveges fájl
else
    echo a fájl nem szöveges fájl
    exit 1
fi
