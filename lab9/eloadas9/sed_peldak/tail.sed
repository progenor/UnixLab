#!/bin/sed -nf
#a tail programot szimulalja

1! { H; g; }        #minden sornal a hold vegere teszi a kurrens sort
                    #es visszaveszi a mintaterbe
1,10 !s/[^\n]*\n//  #ha nem az elso 10 sor, akkor az elso \n karakterig 
                    #terjedo reszt torli - ez a puffer elso sora 
$p                  #az utolso sornal nyomtat

h                   #elmenti a mintatateret a hold-ba: igy itt az elso
                    #10 sor utan mindig az utolso beolvasott 10 sor van

