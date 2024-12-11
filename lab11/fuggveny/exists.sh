#ellenőrzi, hogy egy fájl létezik-e
#használat:
#      . exists.sh
#      if exists a.txt ;then
#         echo létezik
#      fi
#vissza: igaz ha a fájl létezik és reguláris fájl

function exists() {
    [[ -f "$1" ]]
}
