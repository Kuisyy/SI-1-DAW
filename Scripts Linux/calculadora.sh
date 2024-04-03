#!/bin/bash

suma(){
suma=$((num1 + num2))
echo "Suma: $suma";

}
resta(){
resta=$((num1 - num2))
echo "Resta: $resta";
}
multiplicacion(){
multiplicacion=$((num1 * num2))
echo "Multiplicación: $multiplicacion";
}
division(){
division=$((num1/num2))
echo "División: $division";
}

echo "Dame el primer número:"
read num1

echo "Dame el segundo número:"
read num2

echo "Elige que operacion deseas hacer: "
echo "1.Suma"
echo "2.Resta"
echo "3.Multiplicacion"
echo "4.Division"
read opcion

case $opcion in
    1)
      suma
      ;;
    2)
      resta
      ;;
    3)
      multiplicacion
      ;;
    4)
      division
      ;;
    *)
        echo "Opcion invalida"
        ;;
esac

echo "Fin del programa"
read fin