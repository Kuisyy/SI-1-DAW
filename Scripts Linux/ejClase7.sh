#!/bin/bash
directorio=0
fichero=0
for fiArg in $1/*
do
    if [ -f $fiArg ]
    then
    let fichero=fichero+1
    fichero

    if [ -d $fiArg ]
    then
    let directorio=directorio+1
    fichero
    fi
done

echo "El numero de drirectorios es: $directorio"
echo "El numero de ficheros es: $fichero"