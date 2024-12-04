#!/bin/bash
#n -ig számláló szkript, n szekundumot fut
#bemenet: 1: n értéke
#használat:
#       ./counter.sh 3
#tesztelés: time ./counter.sh 3

#van paraméter
if [[ -z "$1" ]]; then
    n=1
else
    n=$1
fi

#számol
while ((n--)); do
    echo -n "$n "
    sleep 1
done
