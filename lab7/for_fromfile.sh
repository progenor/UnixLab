#!/bin/bash
#paraméterek:
#  1 : felhasználók listáját soronként tartalmazó fájl
#használat:
#  ./for_fromfile.sh user.txt

userlist=${1:? hiányzik a paraméter}

#ha nincs lista fájl
if ! [[ -f "$userlist" ]]; then
    echo nincs ilyen fájl: "$userlist"
    exit 1
fi

#minden felhasználóra megismételve
# shellcheck disable=SC2013
for user in $(cat "$userlist"); do
    echo "$user"
done
