#!/bin/bash

for archivos in /etc/* 
    do
    if [ -f $archivos -a -r $archivos ]  # el f comprueba si es un archivo regular -a une (como puertas logicas el AND) y el -r si es legible
    then
    echo $archivos >> listaetc
    fi
done