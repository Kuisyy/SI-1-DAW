$usuarios = @() #Esto es para crear un array vacio

do {
    
    Write-Host "1. Añadir usuario"
    Write-Host "2. Eliminar usuario"
    Write-Host "3. Ver usuarios"
    Write-Host "4. Salir"
    
    $opcion = Read-Host "Seleccione una opcion"

    switch ($opcion) {
        1 {
            $usuario = Read-Host "Dime el nombre del usuario"
            $usuarios += $usuario
            Write-Host "Usuario '$usuario' añadido correctamente"
            Clear-Host
        }
        2 {
            $usuario = Read-Host "Dime el nombre del usuario que quieres eliminar"
            if ($usuarios -contains $usuario) {
                $usuarios = $usuarios | Where-Object {$_ -ne $usuario} #Creo un nuevo array donde se quita el usuraio introducido con el WHERE-OBJECT lo del $_ hace referencia al objeto actual que se esta usando
                Write-Host "Usuario '$usuario' eliminado correctamente"
            } else {
                Write-Host "El usuario '$usuario' no existe"
            }
            Clear-Host
        }
        3 {
            if ($usuarios.Count -eq 0) {
                Write-Host "No hay usuarios para mostrar"
            } else {
                Write-Host "Usuarios:"
                $usuarios
            }
        }
        4 {
            Write-Host "Saliendo del programa..."
        }
        default {
            Write-Host "Opción no valida. Por favor, seleccione una opción valida."
        }
    }
} while ($opcion -ne "4")
