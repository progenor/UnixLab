#!/bin/bash

cimzett=${1:? hiányzik az elő paraméter, a címzett neve}
konyvtaros=${2:? hiányzik a második paraméter, a könyvtáros neve}


cat << VEGE

Könyvtári figyelmeztető

Kedves ${cimzett},

kérjük hozza vissza a kölcsönkért könyveket.

Üdvözlettel,
$konyvtaros, könyvtáros

VEGE

