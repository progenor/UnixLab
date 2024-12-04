#!/bin/bash

echo a "$(basename "$0")" azonosítója $$

# munka.sh háttérben fut
./munka.sh b.txt > szavak  &

pid=$!

echo munka elindult, azonosító $pid

#amíg a munka megy lehet egyebet csinálni
echo blá...
echo blá...
echo blá...

#vége a feladatoknak, meg kell várni a munkát
./forog.sh  &
forog=$!

wait $pid     #a munkát várja meg
excode=$?


kill $forog > /dev/null  #leállítja a forgót

echo $pid pid számú munka leállt, exit kód $excode

