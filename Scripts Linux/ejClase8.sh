#!/bin/bash

directorio=0
fichero=0
for directorioArg in $1/*
do
if [ -f $directorioArg ]
then
fichero=$((fichero+1)) 
fi

if [ -d $directorioArg ]
then
directorio = $((directorio+1))
fi
done