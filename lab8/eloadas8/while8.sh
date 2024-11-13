#!/bin/bash
#a while szerkezet saját átirányítható
#standard ki és bemenettel rendelkezik

while read sor; do
    #feldolgozás itt
    echo ${#sor} "$sor"

done <teszt.txt >teszt1.txt
