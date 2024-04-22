#!/bin/bash
for archivo in $* 
do 
    if [-f $archivo] 
    then 
        echo $archivo 
    else 
        echo No existe $archivo 
    fi 
done