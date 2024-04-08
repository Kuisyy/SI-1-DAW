#!/bin/bash

if id "$usuario" &>/dev/null 
    then
    echo "El login $usuario ya existe." #El &>/dev/null al final redirige tanto la salida estándar (stdout) como la salida de error estándar (stderr) a la nada para que no salga nada en la temrinal
else
    do echo "Usario $usuario inexistente"
fi