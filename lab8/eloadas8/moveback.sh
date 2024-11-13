#!/bin/bash
#visszaköltözteti a movefiles.sh által
#elköltöztetett fájlokat

[[ -n $(ls -A mp3) ]] && mv -v mp3/* forras
[[ -n $(ls -A pdf) ]] && mv -v pdf/* forras
[[ -n $(ls -A avi) ]] && mv -v avi/* forras
[[ -n $(ls -A kepek) ]] && mv -v kepek/* forras
