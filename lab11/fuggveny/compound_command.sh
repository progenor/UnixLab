#!/usr/bin/env bash
#kód blokk vagy összetett parancs szintaxis

{
    echo a
    echo b
} >out.txt

{
    read a
    read b
    echo "$a $b"
} <out.txt

#ures könyvtár létezik
#a kód blokk egyben fut le
dir=ures
cd "$dir" 2>/dev/null || { echo hiba; exit 1; }
echo OK
