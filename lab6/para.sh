#!/bin/bash
#egyszerű példa a shell paraméterek használatára

echo a szkriptnek $# paramétere van

echo a szkript neve : "$0"

echo az első paraméter "$1"
echo a második paraméter "${2}"
echo a harmadik paraméter "$3"

echo az összes paraméter "$@"
