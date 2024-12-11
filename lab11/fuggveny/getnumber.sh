#beolvas egy előjeles egész számot
#ha számjegyet utunk be, akkor visszatér
#ha nem, akkor hibát ír ki es ismét olvas
#a szám a beolvasott globális szam nevű változóban marad
#ha beolvasáskor ^D -t kap, visszatér
# globális: szam
# használat:
#   . getnumber.sh
#   getnumber
#   echo $szam

function getnumber() {
    while true; do
        if ! read -p "Kérek egy egész számot:" szam; then
            echo kilépés ^D-vel
            return 1
        fi

        if [[ $szam =~ ^[-+]?[0-9]+$ ]]; then
            break #visszatér, a ? változóban 0 marad
        else
            echo "ismételje meg, nem egész szám"
        fi
    done
}
