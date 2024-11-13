#!/bin/bash
#végigolvassa mezőnként a book.csv fájlt
#a read mező elválasztóját átállítjuk
#

#IFS = Input Field Separator
#alapértelmezetten szóköz, TAB, vagy \n

sor=0
leltar=0
while IFS='|' read -r isbn cim szerzo kiado ar; do
    ((sor++ == 0)) && continue

    echo "$sor. Szerző: $szerzo Cím: $cim Ár: $ar Kiadó: $kiado ISBN: $isbn"

    ((leltar += ar))
done <book.csv

echo Leltáron $leltar USD értékű könyv
