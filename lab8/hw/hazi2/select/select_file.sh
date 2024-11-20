#!/usr/bin/env bash
#a select_file_sablon.sh bővítése
#paraméterek:
# 1:könyvtárnév
# 2: fájl típus
#futattás:
# bash select_file.sh teszt txt

#prompt sztring
PS3='Művelet:'

dir=${1:? nincs könyvtárnév}
type=${2:-txt}

if [[ ! -d "$dir" ]]; then
    echo "$dir nem könyvtár"
    exit
fi

for f in "$dir"/*."$type"; do

    [[ ! -f $f ]] && continue #ha üres a könyvtár akkor a */txt sztringet kapjuk 

    echo
    echo Kiválasztott fájl: "$f"

    #itt a select szerkezet kezdete
    select op in Törlés Másolás Átnevezés "Nincs művelet"; do

        echo "$f fájlra $op következik, a REPLY értéke=$REPLY":

        #a REPLY változóban 1,2,3,4 van
        case "$REPLY" in
        1)
            echo "$f" törlése
            ;; # törlés
        2)
            echo "$f" másolása
            ;; # másolás
        3)
            echo "$f" átnevezése
            ;; # átnevezés
        4)
            break
            ;;
        *)
            echo hibás menüpont: "$REPLY"
            continue
            ;; # a felhasználó 4-nél nagyobb számot írt be
        esac

        #művelet vége $f-re, kiugrunk
        echo "$f fájlra $op végrehajtva, REPLY=$REPLY volt"
        break
    done
done
echo "nincs több .$type fájl a $dir könyvtárban"
