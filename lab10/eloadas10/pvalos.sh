#pozitív valós szám alakú sztringet tesztelő függvény
#formátumok:  3  +3  3.3  .3   +.3
#használat
#   . pvalos.sh
#   if pvalos 3.2 ; then
#      echo pozitív valós szám
#   fi

pvalos() {
    #regex: egész kötelező, tört opcionális
    #                         vagy (|)
    #                                  egész opcionális, tört kötelező
    if [[ $1 =~ ^\+?([0-9]+\.?[0-9]*|[0-9]*\.[0-9]+)$ ]]; then
        return 0 #ha valós szám alakú
    else
        return 1
    fi
}
