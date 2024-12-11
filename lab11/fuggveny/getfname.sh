#visszaadja az állománynevet, levágva az extenziót
#egy bemeneti paramétere van
#ha több pont van a névben, az utolsótól a végéig vágja le
#a karaktereket
#ha nincs . , akkor a teljes nevet adja vissza
# használat:
#   . getfname.sh
#   name=$(getfname a.txt)

function getfname() {
    #elhagyjuk az utolsó ponttól
    #a név végéig terjedő szubsztringet
    #más megoldás:
    #echo "$1" | sed -r 's/(.+)(\.[^.]*)$/\1/'

    local filename="$1"
    echo "${filename%.*}"
    return
}
