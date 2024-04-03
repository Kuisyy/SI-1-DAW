
Write-Host "Ruta del primer archivo"
$rutaArchivo1 = Read-Host
Write-Host "Ruta del segundo archivo"
$rutaArchivo2 = Read-Host


    $texto1 = Get-Content $rutaArchivo1
    $texto2 = Get-Content $rutaArchivo2

    $texto1.Split(" ")
    
    $texto2.Split(" ")    
    
    Write-Host $texto1[1].Equals(($texto2[2]))


        
     



