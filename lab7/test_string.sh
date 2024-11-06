#!/bin/bash
#sztringek tesztelése

a="abc"
b="abc"
c=""

#egyenlőség
[[ "$a" = "$b" ]] && echo egyenlőek || echo nem egyenlőek

if [[ "$a" = "$b" ]]; then         #nem egyenlőre az operátor !=
    echo a és b egyenlő mint sztring
else
    echo a és b nem egyenlő mint sztring
fi

#nulla ("zéró") hossz = üres sztring
if [[ -z "$c" ]]; then
    echo a c sztring hossza 0
else
    echo a c sztring hossza nem nulla
fi

#nem nulla hossz
if [[ -n "$a" ]]; then
    echo az a sztring hossza nem 0
fi

#ugyanaz mint a -n teszt
if [[ "$b" ]]; then
    echo "a b változó értéke nem üres sztring"
fi
