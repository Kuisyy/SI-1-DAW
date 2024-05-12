#!/bin/bash
echo "Dame el primer número:"
read num1

echo "Dame el segundo número:"
read num2

suma=$((num1 + num2))
resta=$((num1 - num2))
multiplicacion=$((num1 * num2))
division=$((num1/num2)) 

echo "Suma: $suma"
echo "Resta: $resta"
echo "Multiplicación: $multiplicacion"
echo "División: $division"