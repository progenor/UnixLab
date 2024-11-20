#!/bin/bash
#soronként olvassa a végrehajtó shell
#standard bemenetét, a sorok elé írja a hosszukat
#
#indítás: bash while4.sh < teszt.txt
#ha nem adunk meg átirányítást, akkor a standard bemenetről olvas

#amíg nincs vége a fájlnak

#opciok
optW=
optF=
optC=
optL=
argL=

while (($# > 0)); do
  case "$1" in
  -f)
    optF=ok
    ;;
  -w)
    optW=ok
    ;;
  -c)
    optC=ok
    ;;
  -L)
    optL=ok
    shift
    argL="$1"
    if [[ ! $argL =~ ^[1-9][0-9]$ ]]; then
      echo l az $argL
    fi
    ;;
  *)
    break
    ;;
  esac
  shift
done


file=${1:?nincs para}

if [[ ! -f $file ]]; then
  echo nincs file
  exit 1
fi

lh=0
lhs=""
ix=0
while read -r sor; do
  #a {} szerkezetben a név elé írt # a sztring hosszának
  # helyettesítését oldja meg a sztring értéke helyett
  h=${#sor}
  if ((h > lh)); then
    lh=$h
    lhs="$sor"
  fi
  if [[ -n optL ]]; then
    if ((i>=argL)); then
      break
    fi
  fi
done <"$file"

#printing
outW=
if [[ ! -n optW ]]; then
  w=$((wc -w <<< "$lhs" ))
  outW="ws: $w"
fi

outC=
if [[ ! -n optC ]]; then
  c=$((wc -c <<< "$lhs" ))
  outC="chs: $c"
fi


if [[ -n $optF ]]; then
  outSor="$lhs"
else
  outSor=${lhs:0:50}...
fi

echo "#ix: $outW $outSor"
