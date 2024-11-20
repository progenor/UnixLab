#!/bin/bash
#hr.sh (horizontal line)
#
#egy sort ir ki amit elvalasztokent hasznalhatunk kimeneteknel
#hasznalat:
#   hr.sh [ -c karakter ] [ -n ]  [ S ]
# a -c karaktert hasznalja kiirt karakterkent es S-szer irja ki
# utana ujsor
# -n opcioval nem kuld ujsor karaktert
# implicit ertekek:  karakter #,  n=67, -n aktiv

char='#' #a kiirt karakter
N=67     #implicit hanyszor
mn=""    #ezt a sztringet a vegso kiiro echo opciojakent hasznaljuk

while (($# != 0)); do
  case $1 in
  -c)
    shift
    #ellenorzom, hogy egy karaktert adott-e meg
    if [[ -n "$1" ]] && ((${#1} > 1)); then
      echo hr.sh: csak egy karaktert kell megadni $1 helyett
      exit 1
    fi
    char="$1"
    ;;
  -n)        #nem kuld ujsor karaktert a vonal utan
    mn="-n " #az echo kapcsoloja -n lesz
    ;;
  [0-9]*) #ha szamjeggyel kezdodo argumentum
    #ellenorzes egrep-el:
    #maximum 3 jegyu szamot fogad el
    if echo "$1" | egrep -q '^[0-9]{1,3}$'; then
      N=$1
    else
      echo hr.sh: a paraméter nem egész szám vagy nagyobb mint 999: $1
      exit 1
    fi
    ;;
  *)
    echo hr.sh: rossz argumentum: $1
    exit 1
    ;;
  esac
  shift
done

#elokesziti a sztringet amit kiir
if ((N > 0)); then
  out=""
  while ((N--)); do
    out=${out}"$char"
  done
fi

echo "${mn}" "$out"
