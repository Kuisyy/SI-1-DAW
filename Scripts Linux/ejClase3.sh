#!/bin/bash

directorio=$1

if [ ! -d "$directorio" ]
    then
    echo "Error: El directorio especificado no existe."
    exit 1
fi


fecha=$(date +%Y-%m-%d)

nombreArchivo="$fecha.$directorio.tar.gz"

tar -czf "$nombreArchivo" "$directorio"    #-c se esta creabd -z gzip y -fespecifica el nombre del archivo

echo "Archivo comprimido creado: $nombreArchivo"
