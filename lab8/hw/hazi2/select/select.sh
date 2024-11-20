#!/bin/bash
#példa select szerkezet használatára

#a PS3 értékét valamilyen prompt-ra
#állítjuk, ez jelenik meg menü prompt-ként

PS3='>>'

#az in utáni sztring lista adja meg a a kiírt menüt
select valtozo in Első Második Harmadik Vége; do
    echo A kiválasztott opció: "$valtozo"
    echo "a \$REPLY változó értéke:" "$REPLY"

    #itt bármilyen parancsot végre lehet hajtani, felhasználva
    #a $valtozo és $REPLY értékeit
    echo "végrehajtás $valtozo vagy $REPLY segítségével"
    
    #kilépni a menü megjelenésekor beütött Ctrl-D karakterrel lehet
    #vagy:
    #az egyik menüpont értékkel lehet saját kilépő kódot írni
    #a $valtozo vagy $REPLY értéke szerint
    # a REPLY Vége esetében 4
    if [[ "$valtozo" = 'Vége' ]]; then
        echo "... kilépés a select-ből"
        break
    fi
done
