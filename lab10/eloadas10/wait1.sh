#!/bin/bash
#egyszerű példa a wait használatára
#a wait a shell beépített szerkezete, megvár egy
#előzőleg indított fiú folyamatot


#elindítjuk háttérben a lassu.sh-t
./lassu.sh 9 > lassu.out &

pid=$!   #lassu.sh azonosítója

echo lassu.sh fut, pid=$pid

./forog.sh &
pid1=$!

wait $pid     #megvárja lassu.sh-t

#forog leállítása
kill -TERM $pid1 2>/dev/null
wait

echo $pid pid számú munka leállt
