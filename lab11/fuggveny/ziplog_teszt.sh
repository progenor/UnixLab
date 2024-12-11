#!/bin/bash
#teszt szkript a ziplog függvényhez

#függvény be
. ziplog.sh

#nagy fájl
fallocate -l 11M a.log

echo a.log mérete:
ls -lh a.log

#ha nagyobb mint 9 MB készítsen zip fájlt
if ziplog 9 a.log; then
    ls -lh a.zip
else
    echo nem volt tömörítés
fi
