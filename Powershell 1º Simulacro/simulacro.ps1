
Write-host "Se va a comprobar si la carpeta DCS existe"
pause

if ( Test-Path -Path C:\DCS )
    {
       Write-Host "La carpeta DCS existe" 
    } 
    else
    {
    mkdir C:\DCS
    }

pause
    
Write-Host "--------MENU--------"
Write-Host "1. Crear .log"
Write-Host "2. Mostrar cantidad de carpetas"
Write-Host "3. Eliminar carpetas"
Write-Host "4. Salir"

[int] $opcion = Read-Host "Seleccione una opcion [1-4]"

switch ($opcion)
{
    1
    { 
    Write-Host "Ha elegido la opcion 1, crear un archivo .log"
    
    $fecha = Get-Date -UFormat "%d-%m-%Y"
    if ( Test-Path -Path C:\DCS\$fecha )
    {
[string] $respuesta = Read-Host "Esta seguro que quiere reemplazar el archvivo? [S/N]"
        
        if ( $respuesta -like 'S' -or $respuesta -like 's' )
            {
                New-Item -Force -Path C:\DCS\$fecha\archivo.log -ItemType File
     foreach ($usuarios in Get-ChildItem C:\Users)
     {
     $usuarios >> C:\DCS\$fecha\archivo.log
     }
            }

    New-Item -Force -Path C:\DCS\$fecha\archivo.log -ItemType File
     foreach ($usuarios in Get-ChildItem C:\Users)
     {
     $usuarios >> C:\DCS\$fecha\archivo.log
     }
    }
    else
    {
    mkdir C:\DCS\$fecha

    }  
    New-Item -Force -Path C:\DCS\$fecha\archivo.log -ItemType File
    foreach ($usuarios in Get-ChildItem C:\Users)
     {
     $usuarios >> C:\DCS\$fecha\archivo.log
     }
     
    }
    2
    { 
    Write-Host "Ha elegido la opcion 2"
    Write-Host "En el directorio DCS, hay un total de carpetas de:"
    (Get-ChildItem -Path C:\Dcs -Directory | Measure-Object).Count    
    
    }
    3
    {
    #Elimina todo porque la fecha del sistema viene recogida con "/" y aqui la recojo con - en medio, si intento recoger la fecha con / me crea carpetas dentro de carpetas
     Write-Host "Ha elegido la opcion 3, elimina archivos residuales"
     $fecha = Get-Date -UFormat "%d-%m-%Y"
     foreach ($archivo in Get-ChildItem C:\DCS)
     {
      if ( $archivo -eq $fecha )
      { 
      Write-Host "Hay un archivo actual de hoy"
      }
      else
      {
      Remove-Item C:\DCS\$archivo
      }
     } 

    

    }
    4
    { 
    Write-Host "Saliendo..."
    exit 0    
    }
    default
    {
      Write-Host "Ingrese una opcion valida"   
    }
}





