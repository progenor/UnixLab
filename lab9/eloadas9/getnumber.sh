#!/bin/bash
#példa az egrep használatára egy sztring ellenőrzésekor
#
#a szkript beolvas egy előjeles egész számot
#ha számjegyet írunk be, akkor kiírja azt a kimenetre
#ha nem, akkor hibát ír ki és ismét olvas

#ha beolvasáskor ^D -t kap,
#kilép
while true; do
    #beolvasás
    if ! read -r -p "Kérek egy egész számot:" szam; then
        echo kilépés ^D-vel
        exit 1
    fi

    #egész szám teszt
    if echo "$szam" | egrep -q '^[-+]?[0-9]+$'; then
        echo OK: "$szam" egész szám
        break
    else
        echo "ismételje meg, a beütött sztring nem egész szám"
    fi
done
