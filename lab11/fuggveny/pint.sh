#pozitív egész számot tesztelő függvény
#használat
#   . pint.sh
#   if pint 3 ; then
#      echo pozitív egész szám
#   fi
#vissza: igaz ha pozitív egész

function pint()
{
    [[ $1 =~ ^\+?[0-9]+$ ]]
    
    #return $? fut le  
}
