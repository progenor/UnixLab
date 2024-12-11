#!/usr/bin/env bash
#Bash függvények kód blokk szintaxisát bemutató példa

#használható a function kulcsszó, de nem kötelező
function first() {
    echo first
}

#function kulcsszó nélkül (ez a POSIX standard):
second() {
    echo second
}

#plus-plus :)
#ha van function kulcsszó, a zárójel nem kötelező
#helyes:
function first1 {
    echo first1
}

#a { } blokk határoló karakterek külön szavak kell legyenek
#tehát vagy újsor, vagy szóköz mindkét oldalon
#hibás kód, nincs elválasztó a third és { között:
#function third{
#   echo third
#}
#helyes:
function third {
    echo third
}

#és ez is helyes (de a shell-format az third formát állítja be):
function fourth
{
    echo third
}

first
second
first1
third
fourth
