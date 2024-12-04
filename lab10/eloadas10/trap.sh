#!/bin/bash
#példa a trap parancs használatára

#saját pid szám
echo folyamat fut, pid szám $$

#jelzés kezelő beállítása a TERM jelzésnek
trap "echo TERM jelzés, Bye; exit 0" TERM

#jelzés kezelő beállítása az INT jelzésnek
trap "echo 'ez egy ^C volt'" INT

#jelzés kezelő beállítása az USR1 jelzésnek
trap "echo Ez egy USR1 jelzés" USR1

#végtelen ciklus
while true; do
    echo -n '*'
    sleep 1
done
