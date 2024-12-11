#százalék számítás valós aritmetikával
#bemenetek:
#  $1 hány %, ha $2 az 100%
#  . vszazalek.sh
#   vszazalek 10.5 225.8
#kimenet echo-val

#pozitív egész valós teszt
. pvalos.sh

function vszazalek() {
    if ! pvalos "$1" || ! pvalos "$2"; then
        echo "a bemenetek helytelenek: $1 $2" >&2
        echo ''
    else
        echo "$1" "$2" | awk '{printf("%.2f\n",$1*100/$2)}'
    fi
}
