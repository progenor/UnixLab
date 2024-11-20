#!/bin/sed -nf
#forditva listaz ki egy allomanyt, mint a tac
#hasznalat:
#    cat file | sed -nf reverse.sed

1!G  #visszakerem a teljes hold buffert, igy a mostani lesz az elso sor
     #az elso sor eseteben nem kell ezt csinalni
$p   #az utolso sornal nyomtatok

h	 #az egeszet visszateszem a hold pufferbe

