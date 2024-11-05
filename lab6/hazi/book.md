# Hazi feladat 6 os labor book.csv bol

```zsh
#  a) Írjuk ki a book.csv fájlból a szerzőket tartalmazó oszlop első 2 sorát a fejlécet kihagyva.
cut book.csv -f 3 -d '|' | head -3 | tail -2

# Írjuk ki a 3 legdrágább könyv listáját az ár szerint rendezve:
sort book.csv -n -r -k 5 -t '|' | head -3
sort book.csv -n -r -k 5 -t '|' | head -5 | sort -k 2 -t '|'
cut book.csv -f 2 -d '|' | tr [a-z] [A-Z] | tail -n +2
sort book.csv -n -k 5 -t '|' | cut -f 2,5 -d '|' | tail -n +2
head book.csv -n 11 | tail -1 | cut -f 2,5 -d '|' | tr '|' -
cut book.csv -f 5 -d '|' | sort -n | uniq -d
```
