#!/bin/bash
#feldob a grafikus felületre egy random kiválasztott képet minden futáskor
#paraméterek:
#  1: könyvtár képekkel
#indítás:
#   ./pic.sh kepek

set -e  #álljon le ha hibás parancs futott

#a képeket tartalmazó könyvtár
kepek=${1:? nincs könyvtár}

#random kép fájl, csak a fájl neve könyvtár nélkül
kep=$( ls "$kepek" | shuf --random-source=/dev/random | head -1 )

#ha a könyvtár üres, hibát ad majd az eog

#Eye of Gnome meghívása
#dokumentáció: https://help.gnome.org/users/eog/stable/
#az eog néha hibaüzeneteket ír ki a terminálra, azt eldobjuk
#a háttérben futtatjuk, hogy új parancsot írhassunk a terminálra
#a feldobott ablakot az egérrel zárjuk majd
eog "$kepek/$kep" 2>/dev/null &
