#!/bin/bash 
if [ ! -d $HOME/bin ] 
    then 
    mkdir $HOME/bin 
fi # copia de archivos
 contador=0
 # contador de archivos copiados 
for archivo in * 
do 
    if  [-x $archivo && -f $archivo] # ejecutable y archivoivo común (no directorio) 
    then 
    cp $archivo $HOME/bin
    echo " $archivo fue copiado a $HOME/bin" 
    let "contador++"
    fi
done 

if [ $contador -eq 0 ] 
    then 
    echo "No se copió ningún archivo" 
    else 
    echo "Fueron copiados $contador archivos"
fi