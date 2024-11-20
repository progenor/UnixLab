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
```bash
# example
grep -E '[a-z]+|[A-Z]+'

# kicsi karakter [a-z]
grep -E '[[:lower:]]'

# telefonszam
grep -E '\+[0-9]'
echo '+40-722-123-233' | grep -E -o '(\+40|0040|\(0\))(-?[0-9]{3}){3}'





```
