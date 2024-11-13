#!/bin/bash

#példák számításokra és kifejezés kiértékelésre a (( )) -tel

#néhány változó

a=1
b=2

#használhatók a C nyelv operátorai, a változónevek
#előtt nem kell a $ szimbólumot használni

echo $((a + 1))

#az sem számít, ha nem tartjuk be feltétlenül a héj által
#máshol szigorúan kért szóközöket

echo $((a + 1))
echo $((a++))

#van egy eset, amikor kell $ szimbólumot
#használni a nevek előtt:
#ha a héj speciális változóit használjuk

if (($# > 0)); then
    echo $(($1 + 2))
fi

#a hatvány operátor a **

echo $((a ** 2))

#feltételekben lehet használni a kifejezéseket
#ha a kifejezés C szerint igaz, akkor 0 kerül a ?
#változóba (shell szerint igaz)

if ((1 < b)); then
    echo '1 < b feltétel igaz'
fi
