#!/bin/bash
#könyvtárba lépés feltételesen
#paraméterek:
# 1: könyvtár neve

dir=${1:? nincs könyvtárnév}

#megpróbál belépni a dir nevű könyvtárba
#hibaüzenetet eldobjuk
#tagadjuk a cd kilépési kódját

if ! cd "$dir" 2>/dev/null; then
    echo "nem sikerült a könyvtárba lépni"
    exit 1
else
    echo "ok, a $dir  a munkakönyvtár"
fi
