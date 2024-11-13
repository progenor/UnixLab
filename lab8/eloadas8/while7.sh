#!/bin/bash
#ismétlődő ciklus
#addig fut, amíg a begépelt sztring nem lesz üres

while true; do
    read -p "Írjon be egy sort:" sor
    #ha nem üres a beolvasott sor kilépek a ciklusból
    if [[ -n "$sor" ]]; then
        break
    fi
done

echo A beírt sor: "$sor"

if which cowsay >/dev/null; then
    cowsay -f koala "Kösssz!"
else
    echo "Kösssz!"
fi
