#!/bin/bash
if [ ! -d $1 ]
then
 echo Error ligas: $1 no es un directorio
 exit 1
fi
echo Archivos que tienen enlace hard:
ls -l | grep -v "^d" | cut -c11  | grep -v "^ 1" | cut -c46  
#  el -v te quitabn las lienas que coincidan con el patron