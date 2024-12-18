#!/bin/bash
#munkát szimuláló szkript,
#megadható, hogy hány másodpercet fusson
#futás közben minden szekundumban egy csillagot ír ki
#paraméter 1: szekundomuk száma
#használat:
#   ./lassu.sh 10

#jelzéskezelő a 4.2 feladathoz
#!!! a STOP jelzést nem lehet kezelni
#trap 'echo STOP elhanyagolva' STOP

trap torles USR1

starsCnt=0
usr1Cnt=0

function torles() {
    t=$(date +%c)
    if (($usr1Cnt == 0)); then
        echo "" >stars.txt
    fi
    ((usr1Cnt++))
    echo "${t} : ${usr1Cnt} . * ${starsCnt}" >>stars.txt
}

#van paraméter?
if [[ -z $1 ]]; then
    echo "használat: $0 másodperc"
    exit 1
fi

#egész szám
if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo a paraméter nem egész szám
    exit 1
fi

n=$1 #hány ciklust végez

while ((n--)); do
    echo -n '*'
    ((starsCnt++))
    sleep 1
done
echo
