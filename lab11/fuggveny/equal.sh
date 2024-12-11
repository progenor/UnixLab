#ellenőrzi, hogy 2 sztring egyenlő-e
#az első és második paramétert hasonlítja össze
# használat:
#   . equal.sh
#   equal a b
# vissza: igaz ha egyenlőek

function equal() {

    #ha nincs két paraméter
    (($# == 2)) || return 1

    #összehasonlítás, ha egyenlőek vissza 0
    if [ "$1" = "$2" ]; then
        return 0
    else
        return 1
    fi
}
