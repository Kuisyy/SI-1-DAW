#!/bin/bash 
if [-d $1] 
then 
    echo Directorios bajo $1 
    ls -lR $1 2>/dev/null | grep '^d' | pr -l 24 | less -24 # el valor 24 en less es para visualizar en pantalla lr lista recursiva y el pr espicifica que se deben mostarr 24 lineas por pagina
    else 
    echo No existe el directorio $1 
fi