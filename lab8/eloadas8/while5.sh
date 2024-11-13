#!/bin/bash
#while szerkezet saját bemenettel

while read sor; do

    #feldolgozás itt
    echo ${#sor} "$sor"

done <teszt.txt 
#a while úgy fog futni "mintha" külön folyamat lenne
#saját standard bemenettel
