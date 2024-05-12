#!/bin/bash

echo "Dime un numero del 1 al 9 y te digo su tabla de multiplicar:"
read num

echo "Su tabla es: "
for ((i=1; i<=10; i++)); 
    do
    resultado=$((num*i))
    echo "$num x $i = $resultado"
done