#!/bin/bash
#törli az üres sorokat azokból a szöveges állományokból
#amelyekben az üres sorok száma meghalad egy N számot
#Paraméterek:
#   $1 - célkönyvtár neve
#   $2 - sorok száma
#

#paraméter átvétel
d=${1:? az első paraméter a könyvtárnév}
N=${2:? a második paraméter a sorok számának határa}

shopt -s nullglob
for target in "$d"/*; do
    #ellenőrzöm, hogy a fájl valóban szöveges
    if ! file "$target" | egrep -q 'text'; then
        echo elines_clean: a "$target" nem szöveges vagy üres, kihagyva
        continue
    fi

    #hány üres sor van a kiválasztott fájlban
    empty=$(egrep '^$' "$target" | wc -l)

    if ((empty > N)); then
        sed -i.bak -r '/^$/d' "$target"
        echo elines_clean: "$target szerkesztve $empty üres sor törülve"
    fi
done
