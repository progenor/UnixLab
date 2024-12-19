#!/bin/bash

function hasznalat() {
  echo "használat: $0 könyvtár1 könyvtár2"
  exit 1
}

if [[ $# -ne 2 ]]; then
  hasznalat
fi

dir1=${1}
dir2=${2}

if [[ ! -d $dir1 ]]; then
  echo "a $dir1 könyvtár nem elérhető"
  exit 2
fi

if [[ ! -d $dir2 ]]; then
  echo "a $dir2 könyvtár nem elérhető"
  exit 2
fi

cnt1=$(find "$dir1" -maxdepth 1 -type f | wc -l)
cnt2=$(find "$dir2" -maxdepth 1 -type f | wc -l)

echo "fájlok száma $dir1 : $cnt1"
echo "fájlok száma $dir2 : $cnt2"

idCnt=0
updCnt=0

for file1 in "$dir1"/*; do
  if [[ -f $file1 ]]; then
    filename=$(basename "$file1")
    file2="$dir2/$filename"

    if [[ -f $file2 ]]; then
      ((idCnt++))

      if [[ $file2 -ot $file1 ]]; then
        echo "$file2 idősebb mint $file1"
        echo -n "Felülírás?[i/n]"
        read -n 1 answer
        echo

        if [[ $answer == "i" ]]; then
          cp "$file1" "$file2"
          echo "'$file2' -> '$file1'"
          ((updCnt++))
        fi
      fi
    fi
  fi

done

echo "azonos nevű fájlok száma: $idCnt"
echo "felülírt fájlok száma d2-ben : $updCnt"
