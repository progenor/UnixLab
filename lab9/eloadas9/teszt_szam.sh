#!/bin/bash
#a [[...]] teszt használata reguláris kifejezéssel
#teszteljük, hogy az első argumentum
#előjeles egész szám

if (($# != 1)); then
    echo egy paramétert várok
    exit 1
fi

szam="$1"

#a reguláris kifejezéssel való tesztelés operátora:  =~
#igazat ad vissza ha a bal oldalon levő sztringre
#a jobb oldalon megadott reguláris kifejezés illeszkedik

#az alábbi példában a [[...]] eredményét tagadjuk

#a bővített tesztben a bal oldali reguláris kifejezést nem szabad idézni

#a jobb oldali sztringet sem kell idézni

if [[ $szam =~ ^[+-]?[0-9]+$ ]]; then
    echo "$szam" egész szám
    exit 0
fi

echo "$szam" nem egész szám
exit 2
