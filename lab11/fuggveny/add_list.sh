function add_list() {
    if [[ -z $1 ]]; then
        echo "nincs paraméter" 1>&2
        echo ""
        return 1
    fi

    #kezdőérték a legkisebb ábrázolható szám vagy az első szám
    local ossz=0

    local k
    for k; do
        #ellenőrzés, ha nem egész szám nem vesszük figyelembe
        if [[ ! $k =~ ^[+-]?[0-9]+$ ]]; then
            continue
        fi
        #osszeadja
        # ossz=$((ossz + k))
        ((ossz += k))
    done
    echo "$ossz"
}
#
