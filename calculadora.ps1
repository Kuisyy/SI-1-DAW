




do {
    Clear-Host
    Write-Host "Calculadora en PowerShell"
    Write-Host "1. Sumar"
    Write-Host "2. Restar"
    Write-Host "3. Multiplicar"
    Write-Host "4. Dividir"
    Write-Host "5. Salir"
    
    $opcion = Read-Host "Ingrese el número de la operación que desea realizar"

    switch ($opcion) {
        "1" {
            $num1 = Read-Host "Ingrese el primer número"
            $num2 = Read-Host "Ingrese el segundo número"
            Sumar $num1 $num2
        }
        "2" {
            $num1 = Read-Host "Ingrese el primer número"
            $num2 = Read-Host "Ingrese el segundo número"
            Restar $num1 $num2
        }
        "3" {
            $num1 = Read-Host "Ingrese el primer número"
            $num2 = Read-Host "Ingrese el segundo número"
            Multiplicar $num1 $num2
        }
        "4" {
            $num1 = Read-Host "Ingrese el primer número"
            $num2 = Read-Host "Ingrese el segundo número"
            Dividir $num1 $num2
        }
        "5" {
            break
        }
        default {
            Write-Host "Opción no válida. Por favor, seleccione una opción válida."
        }
    }

} while ($opcion -ne "5")