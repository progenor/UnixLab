#!/bin/bash
#példa "itt dokumentum szerkezetre"

#egy paraméter van, a címzett nevét tartalmazza
cimzett=${1:? hiányzik az elő paraméter, a címzett neve}

#here doc szerkezet kezdete
cat << VEGE    

Könyvtári figyelmeztető

Kedves ${cimzett},

kérjük hozza vissza a kölcsönkért könyveket.

Üdvözlettel,
Könyvtáros

VEGE
#here doc szerkezet vége
#a VEGE szó a sor elején kell legyen
