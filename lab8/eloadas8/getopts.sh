#!/bin/bash
#példa program a getopts függvény használatára
#
#a getopts opció sztringjének első karaktere a :
#   ez azt jelenti, hogy nem fog hibákat kiírni
#ezt ki lehet törölni, akkor hibaüzeneteket kapunk
#
#utána jönnek az opció karakterek, lehet mindegyik után :
#
#ha az opció karakter után : van, azt jelenti,
#hogy az opció paramétert is vár, ilyenkor
#ezt az OPTARG változóból lehet leolvasni
#
#az alábbi hívás a következő opciókat várja:
#   -a paraméterrel
#   -b paraméterrel
#   -c és -d paraméter nélkül
#
#a következő megtalált opciót a opcio változóban
#téríti vissza
#
#ha az OPTERR változót 0-ra állítjuk,  a getopts semmiképp nem ír ki hibát
# OPTERR=0
#ha az opció sztring elején van egy : , akkor is csendesen fut és nem ír
#ki opció hibákat
#így ebben a példában felesleges az OPTERR beállítása,
#mert van : az opció sztring elején

#segédlet:
#   help getopts

while getopts ":a:b:cd" opcio; do
    case $opcio in
    a) echo a opció, argumentum: "$OPTARG" ;;
    b) echo b opció, argumentum: "$OPTARG" ;;
    c) echo c opció ;;
    d) echo d opció ;;
    ?)
        echo ismeretlen opció "$OPTARG"
        echo "$0:" használat: "$0 [ -a N ] [ -b N ] [ -c ] [ -d ] paraméterek ..."
        exit 1
        ;;
    esac
done

echo vége a getopts hívásoknak, az OPTIND index értéke = $OPTIND

#el kell mozgatni a parancssort balra $OPTIND-1 pozícióval
#ha még vannak paraméterek, amelyek nem opciók
#azok a $1, $2 stb.-be kerülnek

shift $((OPTIND - 1))

if [[ -n "$1" ]]; then
    echo "$1" a megmaradt első parameter
else
    echo nincsenek további paraméterek
fi
