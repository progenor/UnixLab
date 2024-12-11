#két szám közül kiírja a nagyobbat
#a bemenetek nincsenek ellenőrizve
# használat:
#   . max.sh
#   max 3 4

function max() {
    if (($1 > $2)); then
        echo "$1"
    else
        echo "$2"
    fi
}
