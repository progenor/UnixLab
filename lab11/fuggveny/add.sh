#összead 2 egész számot és kiírja az összeget
# használat
#   . add.sh
#   add 1 2
#vissza: standard kimenetre írt összeg

function add() {
    local sum
    #TODO: ellenőrizni, hogy a bemenetek számok
    sum=$(($1 + $2))
    echo $sum
}
