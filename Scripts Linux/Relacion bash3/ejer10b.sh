#!/bin/bash
if [ ! -d $1 ]
then
 echo Error ligas: $1 no es un directorio
 exit 1
fi
echo Archivos que son enlace simbólico:
ls -l | grep "^l" | cut -56 -