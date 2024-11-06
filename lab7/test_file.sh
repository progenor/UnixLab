#!/bin/bash
#fájlok tulajdonságainak tesztelése

[[ -f a.txt ]] && echo a.txt fájl létezik

[[ -w a.txt ]] && echo a.txt írható 

if [[ -f a.txt ]] ; then
    echo a.txt igazi fájl
else
    echo a.txt nem igazi fájl
fi

if [[ -s a.txt ]] ; then
    echo a.txt hossza nem nulla
else
    echo a.txt hossza 0
fi

if [[ -w a.txt ]]; then
    echo a.txt írható
    echo "új sor" >> a.txt #ez itt végrehajtható 
else
    echo a.txt nem írható
fi

#más operátorok: lásd: tananyag


