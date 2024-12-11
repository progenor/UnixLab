#több egész szám közül kiírja a legnagyobbat
#ha nincs paraméter, üres sztringet ír vissza, és
#egy hibaüzenetet a standard hiba kimenetre
#csak a számokat veszi figyelembe a bemeneti paraméterek közül
#globális nincs
#használat:
#         . maxrow.sh
#         maxrow 3 4 2 6
#         maxrow 3 4 abc 2 6
#kimenet echo-val

function maxrow() {
    if [[ -z $1 ]]; then
        echo "nincs paraméter" 1>&2
        echo ""
        return 1
    fi

    #kezdőérték a legkisebb ábrázolható szám vagy az első szám
    local mx="$1"

    local k
    for k; do
        #ellenőrzés, ha nem egész szám nem vesszük figyelembe
        if [[ ! $k =~ ^[+-]?[0-9]+$ ]]; then
            continue
        fi
        #nagyobb-e
        if ((k > mx)); then
            mx=$k
        fi
    done
    echo "$mx"
}
