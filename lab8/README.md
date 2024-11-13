Hogyan használjuk

1. Logikai operátorokat parancssoron

&& - ha sikeresen lefutott az első parancs akkor lefut a másik is
|| - ha sikeresen lefutott az első parancs, nem fut le a másik. Ha nem futott le akkor a vagy utáni rész fut le
! - a visszaadott ? változó tagadható. A parancs elé kell betenni

2. a ? változót

#? sikeres parancs lefutása esetén 0-t ad vissza
A 0-nál nagyobb számok minden parancsnál más fajta hibát jelentenek
Ezek mindig egész számok
1-125 a program lefut, de hibát ad ki
126 nincs jogunk végrehajtani
127 a parancs nincs a PATH-ben

3. if szerkezetet

if <feltétel>; then
    ..valami valami..

elif <feltétel>; then
    .. valami valami..

else then
    ..valami valami..
fi

4. test vagy [[ parancs kifejezéseit

test <feltétel>
[feltétel]

5. listás 'for' szerkezetet
```sh
for i in lista
do
    parancssor
done

vagy

for i
do
    parancssor
done```

6. parancssor paramétereit végigjáró 'for' szerkezetet
```sh
for f in $( ls )
do
    echo $f             kiírja az összes fájlt amit az ls visszatérít
done```

7. while szerkezetet

```sh
while <feltétel>
do
    parancssor          ameddig a feltétel igaz
done

until <feltétel>
do
    parancssor          ameddig a feltétel hamis
done```

8. shift parancsot

Elmozgatja a parancssor argumentumait egyel balra, szóval az első argumentum kiesik

9. a read parancsot

Addig olvas a terminálról ameddig egy általunk megadott kulcsszót be nem írunk

10. a case szerkezetet

```sh
case változó in
    minta 1) parancsok ;;
    minta 2) parancsok ;;
esac
```