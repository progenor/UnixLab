#!/bin/bash
#átmásol fájlokat egy könyvtárból egy másikba,
#ha a fájlban legalább N szövegsor van
#ha a célkönyvtár nem létezik, létrehozza
#
#Paraméterek:
#   $1 - forráskönyvtár
#   $2 - célkönyvtár
#   $3 - sorok száma
#
# tesztelés:
# fcopy.sh forras cel 10

#a szkript fájl neve
myname=$(basename "$0")

#ha nincs pont 3 paraméter, kilép:
if (($# != 3)); then
    echo használat: "$myname" forrás cél sorok_száma
    exit 1
fi

#paraméterek átvétele
forras="$1"
cel="$2"
sorszam=$3  #ebben a szkriptben nem teszteljük, hogy ez egész szám
            #ha nem az, hibásan fog működni

#teszteljük a könyvtárakat
if ! [[ -d "$forras" ]]; then
    echo "$forras" könyvtár nem létezik
    exit 1
fi

#ha a célkönyvtár nem létezik létrehozzuk
#mkdir nem ad hibát ha a könyvtár létezik és van -p opció
mkdir -p "$cel" || exit 1

#megszámoljuk hány fájlt másolunk
szam=0

#végigjárjuk a forráskönyvtár fájljait
#feltételezzük, hogy csak szöveges fájlok vannak benne
#és ezek elérhetőek
for f in "$forras"/*; do

    f=$(basename "$f") #marad csak a fájlnév

    #a fájlban levő sorok száma
    N=$(wc -l < "$forras/$f")

    #itt teszteljük a másolás feltételét
    if ((N > "$sorszam")); then
        #ha teljesül a feltétel másolunk

        #kiírjuk, hány sor van a fájlban, de nem írunk újsort
        #így ugyanabban a sorban fog megjelenni
        #a cp által kiírt szöveg is

        echo -n "$N soros fájl : "

        #használjuk a -v opciót, hogy lássuk mi történik:
        if ! cp -v "$forras/$f" "$cel"; then
            echo másolás nem sikerült: "$forras/$f" "->" "$cel/$f"
            exit 1
        fi
        #számláljuk a fájlokat
        ((szam++))
    fi
done

echo $szam fájl másolva
