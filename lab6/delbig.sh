#!/usr/bin/env bash
#felajánlja törlésre a legnagyobb méretű fájlt egy könyvtárból
#interaktívan töröl
#paraméter:
# 1: könyvtárnév
# használat:
#     delbig.sh könyvtárnév
# hibák:
# hibázik, ha üres a cél könyvtár

#futtatás:
#   ./delbig.sh adatok

#ha bármely parancs hibázik, azonnal lépjen ki a shell
set -e

d=${1:? nincs könyvtárnév}

#ha a cd nem sikerül, kilép a shell automatikusan
#ha nem használnánk a set -e opciót, a shell tovább futna a hiba
#után, és a munkakönyvtárban dolgozna
cd "$d"

#a legnagyobb méretű fájl neve
#a ls -S méret szerint rendez, -1 minden sorban egy nevet ír
file=$(ls -1S | head -1)
#   1: fájlnév kötelező

#itt kellene tesztelnünk, hogy a fájlnév ne legyen üres
#sztring
#ha ezt most nem tesszük, a wc parancs hibázni fog, és ott lép
#ki a shell

#a fájl mérete byte-okban
L=$(wc -c <"$file")

echo
echo a legnagyobb méretű fájl "$file", "$L" byte
echo

#törlés !!! teszt szkriptekben, tanuláskor
#mindig -i opcióval töröljünk
#ha a szkript interaktív
#vagy használjuk a trash-t rm helyett
rm -iv "$file"
