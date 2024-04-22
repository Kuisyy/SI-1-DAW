#!/bin/bash

usuario=$1
id $usuario 1>/dev/null 2>&1
error=$?
if [ ! $error -eq 0 ]
    then
    echo "El usuario " $usuario "no existe"
    exit
fi

nombre= `id $usuario | cut -f1 -d" "`
echo \(UID\) y nombre: nombre
grupo1= `id $usuario | cut -f2 -d" "`
echo \(GID\) y grupo primario: $grupo1

if [`id $usuario | tr " " "\n" | wc -l` -gt 2]
    then 
    grupos2=`id $usuario | cut -f3 -d" "`
    echo \(GIDs\) y grupos secundarios: $grupos2
fi
