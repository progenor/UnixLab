#!/bin/bash
#a getopts használata úgy, hogy megjegyezzük a talált opciókat változókban
#és felhasználjuk ezeket a fő szkript végrehajtásánál
#
#az alábbi végigjárás a következő opciókat várja:
#   -a paraméterrel
#   -b paraméterrel
#   -c és -d paraméter nélkül
#tesztelés:
#   ./getopts1.sh -a 3 -b 6 -c -d file

#segédváltozókat állítunk be

opta= #a opciót megjegyző változó
optb= #b opciót megjegyző változó
optc= #c opciót megjegyző változó
optd= #d opciót megjegyző változó

arga="" #a opció paramétere, ide a szóköz helyett tehetünk implicit értéket
argb=0  #b opció paramétere, pl. ez alapértelmezetten 0, ha jön más szám, akkor változik

#az első :-tot ki lehet törölni, akkor a getopts írja ki a hibákat
while getopts ":a:b:cd" opcio; do
    case $opcio in
    a)
        opta=1
        arga="$OPTARG"
        #itt lehet ellenőrizni, hogy OPTARG értéke helyes-e
        ;;
    b)
        optb=1
        argb="$OPTARG"
        ;;
    c) optc=1 ;;
    d) optd=1 ;;
    ?)
        echo helytelen opció: "$OPTARG" "(ismertelen, vagy hiányzik a paramétere)"
        echo "$0:" használat: "$0 [ -a N ] [ -b N ] [ -c ] [ -d ] paraméterek ..."
        exit 1
        ;;
    esac
done

#vége a getopts hívásoknak, az OPTIND index értéke = $OPTIND

#el kell mozgatni a parancssort balra $OPTIND-1 pozícióval
#ha még vannak paraméterek, amelyek nem opciók
#azok a $1, $2 stb.-be kerülnek
shift $((OPTIND - 1))

if [ -n "$1" ]; then
    echo "$1" a megmaradt első parameter
else
    echo nincsenek további paraméterek
fi

#itt kezdődik a tulajdonképpeni végrehajtó rész
#a fő szkriptben, ha valami opciótól függ, használjuk az opció változókat:

if [[ -n "$opta" ]]; then
    echo van a opció, argumentuma "$arga"
    echo elvégezzük a feladatot úgy, ahogy a opció kéri az új argumentummal: "$arga"
else
    echo nincs a opció
fi

if [[ -n "$optb" ]]; then
    echo van b opció, argumentuma "$argb"
    echo elvégezzük a feladatot úgy, ahogy b opció kéri az új argumentummal: "$argb"
else
    echo nincs b opció
fi

if [[ -n "$optc" ]]; then
    echo elvégezzük a feladatot úgy, ahogy a c opció kéri
else
    echo elvégezzük a feladatot c opció nélkül
fi

if [[ -n "$optd" ]]; then
    echo elvégezzük a feladatot úgy, ahogy a d opció kéri
else
    echo elvégezzük a feladatot d opció nélkül
fi
