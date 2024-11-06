#!/bin/bash
#egész számok összehasonlítása

#használatuk redundáns ma,
#többnyire a (()) szerkezetet használjuk helyettük

#operátorok
# -eq equal
# -lt less than
# -le less or egual
# -gt greater than
# -ge greater or equal
# -ne not equal

x=1
y=2
z=3

if [[ $x -eq $y ]]; then
    echo x és y egyenlő mint szám
else
    echo x és y nem egyenlő
fi

if [[ $z -gt $x ]]; then
    echo z nagyobb mint x mint szám
else
    echo z nem nagyobb mint x
fi
