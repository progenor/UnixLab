#!/bin/bash
#vár, amíg a teszt.txt fájl eltűnik

while [[ -f teszt.txt ]]; do
    sleep 1 #1 másodperc várakozás
done

echo teszt.txt eltűnt!
