#!/bin/bash
#elkészíti a függvény könyvtár tartalmát
#használat:
#színes kimenet:
#   ./tartalom.sh
#nem színes kimenet:
#   ./tartalom.sh -n

piros=$(tput setaf 1)
zold=$(tput setaf 2)
reset=$(tput sgr0)

if [[ $1 == -n ]]; then
    piros=
    zold=
    reset=
fi

for f in *.sh; do
    if [[ $f == tartalom.sh || $f == t.sh ]]; then
        continue
    fi
    elso=$(head -1 "$f" | sed -r 's/^#//')
    if [[ $elso =~ ^!/ ]]; then
        echo -n "$piros$f:$reset "
        masodik=$(head -2 "$f" | tail -1 | sed -r 's/^#//')
        echo "szkript:" "$masodik"
    else
        echo -n "$zold$f:$reset "
        echo "függvény:" "$elso"
    fi
done
