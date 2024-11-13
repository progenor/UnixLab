#!/bin/bash
#while szerkezet saját bemenettel
: >1.txt
: >2.txt
: >3.txt

while read sor; do

    case "$sor" in
    P[a-z]*) echo "$sor" >>1.txt ;;
    P[0-9]* | R*) echo "$sor" >>2.txt ;;
    *) echo "$sor" >>3.txt ;;
    esac

done <tlista.txt
#a while úgy fog futni "mintha" külön folyamat lenne
#saját standard bemenettel
