#!/bin/bash
#példa select szerkezet használatára

#a PS3 értékét valamilyen prompt-ra
#állítjuk, ez jelenik meg menü prompt-ként

PS3='>>'

#az in utáni sztring lista adja meg a a kiírt menüt
select valtozo in Első Második Harmadik Vége; do
    echo A kiválasztott opció: "$valtozo"
    # shellcheck disable=SC2016
    echo a '$REPLY' változó értéke ilyenkor: "$REPLY"

    #itt bármilyen parancsot végre lehet hajtani, felhasználva
    #a $valtozo és $REPLY értékeit

    #kilépni az egyik menüpont értékkel lehet
    #vagy lehet nézni a REPLY értékét is
    #ami a Vége esetében 4
    if [[ "$valtozo" = 'Vége' ]]; then
        echo "... kilépés a select-ből"
        break
    fi
done
