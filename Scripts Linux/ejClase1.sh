#!/bin/bash

echo "Dame la primera cadena de caracteres: "
read cadena1
echo "Dame la segunda cadena de caracteres: "
read cadena2

if [ $cadena1 == $cadena2 ]
then
	echo "La cadena es identica"
else
    do echo "La cadena no coincide"
fi