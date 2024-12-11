#faktoriálist számol rekurzívan - elrettentő példa, nem ajánlott a rekurzió
#egy paraméterrel kell meghívni
#n! -t számol
#az eredmény a fact nevű változóban marad
#a shellben nem szoktunk számításokat végezni rekurzívan
#használat:
#hívás előtt a bemenő paramétert ellenőrini kell, pozitív egész szám
#   . calc_fact.sh
#   calc_fact 5
#   echo $fact

function calc_fact() {
    if (($1 == 0)); then
        fact=1                #ha n == 0 , akkor fact=1
        return
    else
        calc_fact $(($1 - 1)) # (n-1)! marad a
                              # fact-ban változoban
        fact=$((fact * $1))   # fact n! lesz
    fi
    return
}
