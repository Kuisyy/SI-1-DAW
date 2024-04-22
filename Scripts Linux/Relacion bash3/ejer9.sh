#!/bin/bash
grupo=$1 # nombre de variable significativo
existe=`cat /etc/group | grep "^$grupo"`

if [ ! $existe ]
    then
    echo "El grupo $grupo no existe."
    exit 1
fi
# extrae número del grupo
gid=`echo $existe | cut -d: -f3`
echo "El número del grupo $grupo es $gid"
# busca usuarios con este grupo primario

echo Usuarios en este grupo como primario:
# corta campos usuario e id grupo,
# selecciona líneas con $gid al final,
# luego corta el gid, deja nombre usuario
cat /etc/passwd | cut -d: -f1,4 | grep :$gid$ | cut -d: -f1
# busca usuarios con este grupo secundario
echo Usuarios en este grupo como secundario: 
echo $existe | cut -d: -f4 | tr "," " "