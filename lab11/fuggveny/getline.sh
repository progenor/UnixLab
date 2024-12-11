#egy sort olvas be és azt a line változóban adja vissza
#a főprogramnak vagy más függvénynek
#ha a felhasználó  Ctrl-D-t üt be, akkor kilép
#globális változó: line
# használat:
#   . getline.sh
#   getline
#   echo $line

function getline {
    line=""
    if ! read -p "Kérek egy sztringet:" line; then
        echo "Olvasás hiba" # ? vissza inkább üres sztring
        return 1            # jelzi, hogy nem sikerült
    fi
    return 0
}
