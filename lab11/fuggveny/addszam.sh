#összead 2 egész számot és globális változóban hagyja az összeget
#használat:
# paraméterek 1: szám, 2:szám
# globális változó: szam
# használat:
#       . addszam.sh
#       add 2 3
#       echo $szam
#vissza: összeg a globális szam változóban
#
function addszam() {
    # shellcheck disable=SC2034
    szam=$(($1 + $2))
}
