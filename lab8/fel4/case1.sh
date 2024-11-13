#!/bin/bash
#$1 bemeneti paraméter egy sztring
#a szkript kiírja, mit tartalmaz a $1 paraméter

while read -r -p "Stringet: " valtozo; do

  case "$valtozo" in
  a) echo kis a betű ;;
  A) echo nagy A betű ;;
  [0-9]) echo egy számjegy ;;
  *[0-9]*) echo van benne számjegy ;;
  *.txt) echo ".txt" sztringgel végződik ;;
  *.jpg | *.png) echo ".png" vagy ".jpg" sztringgel végződik ;;
  *) echo erre nem írtunk pontos kiválasztást ;;
  esac
done
