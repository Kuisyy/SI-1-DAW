function operar($valor1,$valor2,$op){
    switch ($op){
      1 { $result = $valor1 + $valor2 }
      2 { $result = $valor1 - $valor2 }
      3 { $result = $valor1 * $valor2 }
      4 { $result = $valor1 / $valor2 }
    }
    return $result
   }
   
   do{
    Clear-Host
    Write-Output "1. Sumar " 
    Write-Output "2. Restar" 
    Write-Output "3. Multiplicar" 
    Write-Output "4. Dividir"
    $opcion = Read-Host "¿Que desea hacer? "
    } while (($opcion -lt 1) -or ($opcion -gt 4))
   
    $num1 = Read-Host "Introduce un número: "
    $num2 = Read-Host "Introduce otro número: "
   
    $res = operar $num1 $num2 $opcion
    Write-Output "El resultado es: $res"