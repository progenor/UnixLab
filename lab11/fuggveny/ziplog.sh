#összecsomagol egy nagy fájlt ha nagyobb a mérete mint M MB
#használat, a.log-ot csomagolja ha > 10MB
#letörli a fájlt csomagolás után, ha zip sikerül
#  . ziplog.sh
#  ziplog 10 a.log
#teszteléshez készíthetünk egy 11MB-os fájlt:
#  fallocate -l 11M a.log

function ziplog() {
    local fname="$2"
    local size="$1"

    if ! [[ -f "$2" ]]; then
        echo rossz fájlnév >&2
        return 1
    fi
    if [[ ! $size =~ ^[0-9]+$ ]]; then
        echo rossz MByte szám >&2
        return 1
    fi

    local name #kivesszük csak a nevet a fájlnévből
    name=$(echo "$fname" | egrep -o '^[^.]+')

    #mekkora a fájl 1024*1000 mértékegységben
    rsize=$(du -B1000000 a.log | cut -f1)

    if ((rsize > size)); then
        # -m letörli a fájlt ha zip sikerül
        zip -m "$name".zip "$fname"
    else
        return 1
    fi
}
