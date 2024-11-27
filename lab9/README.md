# Eloadas jegyzet
## Tartalom
- szovegekben valo kereses, szovegfeldolgozas
- `egrep` hasznalata
- `sed` hasznalata

## Mintakat felepito sorozat lehetosegek
- mindent meg lehet oldani ezzel a 3 peldaval
1. abc -*concatination*
2. ab* -*repetition*
3. a | b -*alternation*
- lehetseges hasznalni a () jeleket



# egrep

- fontos `-v` opcio a reverset adja meg, amiket nem talal meg

```bash
# example
grep -E '[a-z]+|[A-Z]+'

# kicsi karakter [a-z]
grep -E '[[:lower:]]'

# telefonszam
grep -E '\+[0-9]'
echo '+40-722-123-233' | grep -E -o '(\+40|0040|\(0\))(-?[0-9]{3}){3}'

#Substitute jpg with png with sed
echo almap.jpg | sed 's/jpg/png/'

# Szedd ki az ures sorokat, masodik egrep
egrep -v e numb.txt | egrep -v '^$'

# file command
file file - megmond dolgokat rola pl keprol
file -b 
file --mime-type

#Debug mode
set -x
valami
set +x

```
