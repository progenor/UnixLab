#!/bin/bash
#egyszerű példa a wait használatára
#a wait a shell beépített szerkezete, megvár egy
#előzőleg indított fiú folyamatot


#elindítjuk háttérben a lassu.sh-t
./lassu.sh 3 > lassu.out &

pid=$!   #lassu.sh azonosítója

echo lassu.sh fut, pid=$pid

wait $pid     #megvárja lassu.sh-t

excode=$?

echo $pid pid számú munka leállt, exit kód: $excode 


