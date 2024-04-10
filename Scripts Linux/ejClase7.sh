#!/bin/bash
directorio=0
fichero=0
for fiArg in $1/*
do
if [ -f $fiArg ]
then
let fichero=fichero+1
fichero
if [ -d $fiArg ]
then
letdirectorio+1
fichero
done