#!/bin/bash
#számmal vezérelt while ciklus
#létrehozzuk a 1.txt - 10.txt fájlokat
pwd
i=10
while ((i)); do
    echo $i.txt létrejön
    touch $i.txt
    ((i--))
done

#töröljük a létrehozott fájlokat
rm -v [0-9].txt 10.txt
