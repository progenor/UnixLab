#!/bin/bash
#a szkript egy vonalat forgat a terminálon
#ezzel jelezhetjük, hogy várunk egy háttérben futó folyamatra,
#indítás:
#  forog.sh

szam=0

t=0.3 #0.3 másodpercenként vált

while true; do
    ((szam++))
    case $szam in
    1) echo -en '–'"\b" ;; #a \b visszaugratja a kurzort
    2) echo -en '\\'"\b" ;;
    3) echo -en '|'"\b" ;;
    4) echo -en '/'"\b" ;;
    *) szam=0 ;;
    esac
    sleep $t
done
