#!/bin/bash
echo "Menú:"
echo "1. Visualizar nombre de usuario"
echo "2. Visualizar directorio de trabajo"
echo "3. Visualizar directorio \$HOME del usuario"
echo "4. Salir"
echo

opcion=0

while [ "$opcion" != 4 ]; do
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            whoami
            ;;
        2)
            pwd
            ;;
        3)
            echo $HOME
            ;;
        4)
            echo "Saliendo..."
            ;;
        *)
            echo "Opción inválida. Por favor, seleccione una opción del menú."
            ;;
    esac

    echo
done