#!/bin/bash
arg=$1
if [ -d $arg ]
then
echo "$arg existe"
num=$(ls | wc -l)
    if [ $num -gt 0 ]
    then
    echo "Si no está vacio, contiene $num ficheros no ocultos"
    fi
fi