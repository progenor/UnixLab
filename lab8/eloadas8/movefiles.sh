#!/bin/bash
#pdf, mp3, avi, jpg, gif típusú állományokat
#külön könyvtárakba válogatja egy forráskönyvtárból
#egy argumentumot vár: a könyvtárnevet ahol az
#állományok vannak
#használat:
#    bash movefiles.sh forras

#a célkönyvtárakat az alábbi változókban adjuk meg
#ezeket is meg lehetne adni paraméterként a parancssoron
PDF=pdf
MP3=mp3
AVI=avi
KEPEK=kepek

#1 paramétert vár
if [[ -z "$1" ]]; then
    echo használat: "$(basename "$0")" könyvtárnév
    exit 1
fi

#a paraméter tartalmát egy jobban olvasható nevű
#változóba tesszük
forras="$1"

#megnézzük, hogy a célkönyvtárak léteznek-e,
#ha nem létrehozzuk őket
#ha van pdf könyvtár, akkor az első feltétel
#után abbahagyja a tesztet
for konyvtar in "$PDF" "$MP3" "$AVI" "$KEPEK"; do
    if ! [ -d "$konyvtar" ] && ! mkdir -v "$konyvtar" 2>/dev/null; then
        echo nem lehet a "$konyvtar" könyvtárat létrehozni
        exit 1
    fi
done

#végigjárjuk a forrás  könyvtár állományneveit
for f in "$forras"/*; do
    #a case-el választjuk és másoljuk különböző helyekre
    #ha egy fájl egyik kategóriába sem esik akkor a *-al
    #jelölt ágra fut
    #bár a másolást meg lehetne csinálni néhány cp-vel
    #itt lehetőség van arra, hogy egyenként elvégezzünk
    #egy feladatot a fájlokkal

    case "$f" in
    *.mp3) mv -v "$f" "$MP3" ;;
    *.avi) mv -v "$f" "$AVI" ;;
    *.pdf) mv -v "$f" "$PDF" ;;
    *.jpg | *.gif) mv -v "$f" "$KEPEK" ;;
    *) echo a "$f" nem tartozik egyik kategoriába sem, marad. ;;
    esac
done
