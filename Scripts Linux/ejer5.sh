#!/bin/bash

read "Nombre de usuario: " nombre
read "Directorio HOME: " dirHome
read "Nombre del go al que pertenece el usuario: " nombreGo
read "Login que se le asignará: " loginUsuario

if id "$loginUsuario" &>/dev/null; then
    echo "El login $login_usuario ya está ocupado. Elige otro." #El &>/dev/null al final redirige tanto la salida estándar (stdout) como la salida de error estándar (stderr) a la nada para que no salga nada en la temrinal
    exit 
fi

if ! grep -q "^$nombreGrupo:" /etc/group; then
    echo "El grupo $nombreGrupo no existe. Por favor, elige un grupo válido."
    exit 1
fi

if [ ! -d "$directorio_home" ]; then
    echo "Creando directorio HOME: $directorio_home"
    mkdir -p "$directorio_home"
fi

shell="/bin/bash"


echo "Creando usuario..."
useradd -d "$dirHome" -g "$nombreGrupo" -s "$shell" "$nombre"

usermod -l "$loginUsuario" "$nombre"

echo "Usuario creado con éxito."