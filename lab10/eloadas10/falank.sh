#!/bin/bash
#beállítható idejű ciklus végrehajtó, paraméterek szekundumban
#használat:
#    falank.sh futási-idő  ciklus-idő
# pl.:
#    falank.sh 10 0.25
#
set -e
set -u

export LC_NUMERIC=C

if (($# != 2)); then
    echo "használat: $0 másodperc ciklus-idő"
    exit 1
fi

. pvalos.sh #pozitív valós számot ellenőrző függvény

if ! pvalos "$1" || ! pvalos "$2"; then
    echo "a paraméterek valós számok: $1 $2"
    exit 1
fi

n="$1" #hány szekundumig fut

T="$2" #egy ciklus szekundumban

C=$(echo "$n $T" | awk '{ print int($1/$2) }') #hány while ciklus

echo "falánk: $n szekundum, $C ciklus : $T szekundum / ciklus"

while ((C-- > 0)); do
    ((999 * 45 / 67 / 2)) #buta számítás
    sleep "$T"
done
