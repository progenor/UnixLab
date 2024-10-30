#!/bin/bash
#kiinduló szkript egyszerű backup készítéséhez
#elmenti a munkakönyvtár .txt típusú állományait 
#a saját könyvtár alatti backup könyvtárba
#a szkriptet az egyik labor feladat alkalmával 
#bővítjük

mkdir -p ~/backup

dir=${1:-.}

cp -v "$dir"/*.txt ~/backup

