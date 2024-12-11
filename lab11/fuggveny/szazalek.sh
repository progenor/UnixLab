#százalék számítás egész aritmetikával
#bemenetek:
#  $1 hány %, ha $2 az 100%
#  . szazalek.sh
#   szazalek 10 100
#kimenet echo-val

#pozitív egész teszt
. pint.sh

function szazalek() {
    if ! pint "$1" || ! pint "$2"; then
        echo "a bemenetek helytelenek: $1 $2" >&2
        echo ''
    else
        echo $(($1 * 100 / $2))
    fi
}
