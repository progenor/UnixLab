#!/bin/bash
#hogyan használjuk szkriptekben a függvényeket

#a példában $1-ben pozitív egész számot várunk
#mert számolni akarunk belőle kivonva

# 1. behúzzuk a függvényt ebbe a shellbe ami a szkriptet
# futtatja
# a pint() függvény teszteli, hogy egy
# sztring pozitív egész számot tartalmaz
# a behúzást a . vagy a source paranccsal tehetjük meg

. pint.sh

# 2. utána lehet használni

if ! pint "$1"; then
    echo a "'$1'" paraméter nem pozitív egész vagy hiányzik
    exit 1
fi

n=$1

#használjuk a pozitív egészet
while ((n--)); do
    echo $n
    sleep 0.5
done
