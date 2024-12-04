# Signals, processes

## Commands

```bash

# ps to list processes all in one tool
ps -Hla

# Helpers

# pgrep - to search for processes
pgrep -xuon #all/user/oldest/newest -d new delimiter

pgrep -f 1000


echo $$ # shell sajat azonosito codeja
pgrep -x lassu\.sh -P $$
pgrep -c # hany darab fut

```


# Sajat jelzest amit user nek volt adva
- `USR1` - 10
- `USR2` - 12


# Alapertelmezett jelzes elrendezesek
- `Term`
- `Core`
- `Ignore`


# Terminalrol kuldott jelek 3 lehet
`TSTP` - terminal stop
`INT`
`QUIT`

# Kill parancs
- kell eloszor egy ps amivel megkapjuk a pid et
- `-TERM` a default opcio ez BTW a `Ctrl-c`
```bash
pkill -TERM 4411
```
# szovegben $? el kell nezni
hamisat ad ha nem tudta bezarni


# Ajanalott mukodesi opcio
```bash
pgrep -x "lassu\.sh" -1. 

# majd ezt atirjuk a pgrep et kill re
```
