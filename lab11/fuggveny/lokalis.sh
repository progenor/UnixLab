#példa lokális változó használatára
#a bash shellben
#
#teszt:
#    . lokalis.sh
#    lokalis 4
#    echo "$eredmeny" # nem kötött váltózó a hívó shellben

function lokalis() {
    local valtozo=3 #a local kulcsszóval deklarált változó
                    #csak a függvényben látható

    local eredmeny=$((valtozo * $1))

    echo $eredmeny

}
