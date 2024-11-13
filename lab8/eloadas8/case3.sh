#!/bin/bash
# felismeri a parancssor opcióit, két opciót keres:
#           -f
#           -c paraméter
# tesztelés:
#     case3.sh -f -c 3 alma

#a -c esetében teszteli az argumentumot is

#végigjárja a paramétereket
#a while végén levő shift gondoskodik erről
while (($# > 0)); do

    case "$1" in
    -f) echo f opció ;;
    -c) #a c opciónak van argumentuma
        #tehát elvégzünk még egy shift-et
        shift
        arg="$1"
        #van-e argumentuma a -c -nek?
        if [[ -z "$arg" ]]; then
            echo "hiányzó argumentum: -c"
            exit 1
        fi
        echo c opció, argumentuma "$arg"
        ;;
    -*)
        echo "ismeretlen opció: $1"
        #ez hiba
        exit 1
        ;;
    *) break ;; #ha elérkeztünk az első argumentumhoz,amelyik nem opció
    esac

    shift #eltoljuk a paramétereket, $1 a következő
done

#ha break-el lépett ki, a $1 egy paramétert tartalmaz
if [[ -n "$1" ]]; then
    echo az opciók utáni paraméter: "$1"
fi
