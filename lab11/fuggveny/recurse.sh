#könyvtárstruktúra rekurzív bejárása
#leírás:
#a függvény bejárja az argumentumaként megadott könyvtár összes
#állományát, lefele lépked rekurzívan a könyvtárakon
#indításkor egy argumentumot kap:
# $1 - a kiinduló könyvtár neve,
#      ha nem adjuk meg a munkakönyvtárból indul
#használat:
#   . recurse.sh
#   recurse könyvtár

function recurse() {

    #egy paraméter: ha nincs megadva akkor a munka könyvtárból indulok
    if [[ -z "$1" ]]; then
        dir=.
    else
        dir="$1"
    fi

    #ha a könyvtár nem létezik
    if ! [[ -d $dir ]]; then
        echo "a $dir könyvtár  nem létezik" >&2
        return 1
    fi

    #ha a paraméterként megadott könyvtárnév végén van egy / karakter
    #akkor azt levágjuk
    dir=${dir%/} #lásd "Műveletek karakterláncokkal" fejezetben a tananyagban

    #minden a könyvtárban lévő állományra
    shopt -s nullglob
    for f in "$dir"/*; do
        if ! [[ -d "$f" ]]; then
            #ha nem könyvtár akkor kiírom a nevét
            echo "$f" : állomány
        else
            echo "$f : könyvtár, rekurzív hívás"
            recurse "$f"
        fi
    done

    shopt -u nullglob
    return 0
}
