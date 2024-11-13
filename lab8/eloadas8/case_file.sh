#!/bin/bash
#a parancssoron megadott fájlnév kiterjesztését írja ki
#paraméterek:
#   1: fájlnév
# használat:
#       case_file.sh x.doc

file=${1:? nincs paraméter}

case "$file" in

*.jpg | *.gif | *.png)
    echo "$file" kép
    ;;
*.doc | *.odt)
    echo "$file" dokumentum
    ;;
*.xls | *.ods)
    echo "$file" táblázat
    ;;
*.txt)
    echo szöveg
    ;;
*) echo ismeretlen fájl típus ;;
esac
