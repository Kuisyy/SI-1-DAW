New-Item -Path C:\Ruta\Al\Archivo.txt -ItemType File #Crear un nuevo archivo literalmente escribe esto para crear un nuevo archivo. PD: en la parte del path puedes meter una variable
Get-ChildItem C:\Directorio # Acceder a un directorio
Test-Path #Testear si existe una ruta
Set-Content -Path metesunaruta -Value loqueVasAMeter:Ej:Texto #Este es el que sobrescribe tambien se puede poner con un angulo >
Add-Content -Path metesunaruta -Value loqueVasAMeter:Ej:Texto #Este es el que añade tambien se puede poner con dos angulos >>
Get-Content #Lee el contenido de archivos.
Copy-Item #Copia archivos o directorios.
Move-Item #Mueve archivos o directorios.
Remove-Item #Elimina archivos o directorio
Select-Object #Selecciona propiedades específicas de objetos.
Where-Object #Filtra objetos en función de una condición.
Split-Path #Divide una ruta de acceso en varias partes.  Tambien existe el split como en java



#Ejemplos 
$archivo=Get-ChildItem C:\Directorio\archivo.txt

$archivo += "mete una linea y se agrega al archivo"

#Sobrescribir linea
Set-Content -Path $archivo -Value "sdasdsdsda o una variable con lo que quireas meter"



