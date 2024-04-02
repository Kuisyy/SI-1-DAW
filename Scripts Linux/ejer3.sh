#!/bin/bash

echo "Dame tus datos personales para guardarlos en el txt: "
echo "Nombre"
read nombre
echo "Apellidos"
read apellidos
echo "Fecha de Nacimiento (DD/MM/AAAA):"
read f_n
echo "Localidad"
read loc
echo "Teléfono:"
read tfn

echo "Nombre: $nombre" >> datos.txt
echo "Apellidos: $apellidos" >> datos.txt
echo "Fecha de Nacimiento: $f_n" >> datos.txt
echo "Localidad: $loc" >> datos.txt
echo "Teléfono: $tfn" >> datos.txt

echo "Archivo creado correctamente en el directorio actual"