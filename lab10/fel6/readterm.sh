#!/bin/bash
#7.1 labor feladat
#a szkript végtelen ciklusban olvass a terminált
#a beolvasott sorokat fájl végére írja egy ideiglenes fájlba

#az ideiglenes fájl neve a szkript folyamat azonosítója, típusa txt
#tehát $$.txt

#ideiglenes fájlt takarítói függvény
function takarit() {
    #letörli az ideiglenes fájl
    echo Megszakító jelzés jött
    rm -fv $$.txt
    exit 1
}

#jelzéskezelő
trap takarit INT QUIT TERM

while true; do
    if ! read -p "Kérek egy sort:" sor; then
        echo "$$.txt a gyűjtött adat"
        break
    fi
    echo "$sor" >>$$.txt
done
