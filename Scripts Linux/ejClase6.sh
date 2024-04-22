#!/bin/bash

while read LINEA
do
    if grep procmail $L >/dev/null 2>&1
    then
    echo $L
    fi
done <listaetc