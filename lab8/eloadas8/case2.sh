#!/usr/bin/env bash
#példa opció felismerésre while ciklussal
#példa futtatás:
#   ./case2.sh -f -c alma 

while (($# > 0)); do #amíg vannak paraméterek
    case "$1" in
    -f) echo f opció ;;
    -c) #a c opciónak van argumentuma
        #tehát elvégzünk még egy shift-et
        shift
        arg="$1"
        echo c opció, argumentuma "$arg"
        ;;
    -*)
        echo ismeretlen opció: "$1"
        #ez hiba
        exit 1
        ;;
    *) break ;; #ha elérkeztünk az első argumentumhoz,amelyik nem opció
    esac
    shift #eltoljuk a paramétereket,
    #$1 a következő paraméter
done
