#!/bin/bash 

echo "Nombres de usuarios, Directorio propio, intérprete de comandos" 
cat /etc/passwd | cut -d: -f1,6,7 | sort | less  #-d delimitadoir
echo