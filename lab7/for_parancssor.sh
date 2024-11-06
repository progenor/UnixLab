#!/bin/bash
#parancssor végigjárása for ciklussal

#a for egyszerűbb változatában az adott változó
#a parancssor sztringjein iterál
# s a "ciklusváltozó" 

if ! [ -d ~/BACKUP ]
then
    mkdir ~/BACKUP || exit 1
fi

for s
do
    echo a következő paraméter "$s"
    cp -v "$s" ~/BACKUP
done
