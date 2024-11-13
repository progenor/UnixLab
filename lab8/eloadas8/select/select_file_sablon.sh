#select sablon a 8. labor 6. feladatához

PS3='Művelet:'

#...itt előállítjuk a fájl listát...
# ez a lista változóban kell legyen, pl.:

lista="a.txt b.txt c.txt d.txt e.txt"

echo Fájl lista: "$lista"

for f in $lista; do

    echo Kiválasztott fájl: "$f"

    #itt a select szerkezet kezdete
    select op in Törlés Másolás Átnevezés "Nincs művelet"; do

        echo "$op" következik, REPLY értéke="$REPLY":

        #a REPLY változóban 1,2,3,4 van
        case "$REPLY" in
        1) echo "$f" törlése ;;    # törlés
        2) echo "$f" másolása ;;   # másolás
        3) echo "$f" átnevezése ;; # átnevezés
        4) break ;;
        *)
            echo hibás menüpont: "$REPLY"
            break
            ;; # a felhasználó 4-nél nagyobb számot írt be
        esac

        #művelet vége, kiugrunk
        break
    done
done
