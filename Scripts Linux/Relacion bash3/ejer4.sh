#!/bin/bash 

archivo=$1 
if [-f $archivo ] 
    then chmod ug+x $archivo # Si el archivo existe y es un archivo regular, esta línea otorga permisos de ejecución al usuario y al grupo del archivo
    ls -l $archivo 
    else echo "Error: el archivo $archivo no pudo ser convertido" 
fi 