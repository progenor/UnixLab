#leteszteli, hogy egész szám-e az első paraméter
#a teszt eredménye a ? változóban marad
#használat
#     . testnumber.sh
#
#     if testnumber 3 ; then echo egész szám ; fi
#
function testnumber() {
    if [ -z "$1" ]; then
        return 1 #nincs argumentum
    fi

    [[ $1 =~ ^[-+]?[0-9]+$ ]]

    #a ? változóban az egrep kilépési értéke marad
    return $? #felesleges, de ki lehet írni, mert így világosabb
}
