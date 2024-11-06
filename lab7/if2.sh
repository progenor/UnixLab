#!/bin/bash
#ha létezik elso nevű könyvtár
#letörli a benne található a.txt nevű fájlt

#megpróbál belépni az elso nevű könyvtárba
#hibaüzeneteket eldobjuk

if cd elso 2>/dev/null; then
    echo "sikerült a könyvtárba lépni"
    rm -vi a.txt #törlés kiírással
else
    echo "nincs elso könyvtár"
fi
