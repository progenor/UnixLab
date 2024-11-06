#!/bin/bash

if ! [ -f x.txt ] ;then
    echo nincs x
    exit 1
fi

x=$( cat x.txt )

if [ -z "$x" ];then
    echo x.txt üres
    exit 1
fi

if [[ "$x" -ne 1 ]] ;then
    echo nincs munka
    exit 1
fi

#munka
echo munka
