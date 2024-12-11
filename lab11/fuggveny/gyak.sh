#a szövegfájlban leggyakrabban használt szó kiírása
#használat:
#        . gyak.sh
#        gyak numb.txt
#kimenet echo-val: előfordulás szó
function gyak() {
    if [[ -z $1 ]]; then
        echo egy fájlnév a paraméter >&2
        return 1
    fi

    f="$1"

    if [[ ! $(file -b --mime-type "$f") =~ ^text ]]; then
        echo "$f" nem szöveges fájl >&2
        return 1
    fi

    tr '[:upper:]' '[:lower:]' <"$f" |
        egrep -o '[a-z]+' |
        sort |
        uniq -c |
        sort -nr |
        head -1 |
        sed -r 's/^ +//'

    return 0

}
