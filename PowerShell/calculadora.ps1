function recogerdatos #Funcion que si no es valido el numero se ejecutara para volver a introducir el numero.
{
    do #Un do while para comprobar que los valores son correctos y si no lo son se repetira el bucle.
    {
        try
        {
           [int] $num=read-Host "Introduce valor:" #introducir el valor
        }
        catch
        {
            Write-Host "¡¡Recuerde que los digitos deben ser numeros enteros!!"  #En caso de que no sea valido o salte la excepcion
        }
    }while($num -isnot [int]) #El isnot hace que si ese numero no es un int vuelve a ejecutar el bucle

    return $num #Una vez el numero es un int lo devuelve
}

if ($args.Count -lt 2)
{
    Write-Host "Los argumentos introducidos son insuficientes"
    Write-Host "El numero minimo de argumentos son dos"

    $num1=recogerdatos #llama a la funcion y el numero 1 se pasa al que devuelve la funcion
    $num2=recogerdatos
}

if ($args.Count -ge 2) #Si el numero de argumumentos es mayor o igual a 2.
{
    echo "Se comprobara a continuación los valores recibidos"
    echo "Si se ha introducido más de dos valores se cogeran solo los dos primeros valores introducidos"

    $aux1=$args[0]
    $aux2=$args[1]

    if($aux1 -isnot [int]) #Si el numero no es tipo int ejecuta la funcion para volver a coger un número
    {
        $num1=recogerdatos
    }
    else #si lo es coge el valor recogido por argumentos osea el originar y lo pasa a un int
    {
        [int]$num1=$args[0]
    }

    if ($aux2 -isnot [int]) #lo mismo pero con el segundo número
    {
        $num2=recogerdatos
    }
    else
    {
        [int]$num2=$args[1]
    }
}
do {
    Write-Host "Menu"
    Write-Host "1. Sumar"
    Write-Host "2. Restar"
    Write-Host "3. Multiplicar"
    Write-Host "4. Dividir"
    Write-Host "5. Recoger datos nuevos"
    Write-Host "6. Salir"
    
    $opcion = Read-Host "Indica la opcion que desea ejecutar: "

    switch ($opcion) {
        "1" {
             $sol = $num1 + $num2
             echo $sol
        }
        "2" {
            $sol = $num1 - $num2
             echo $sol
        }
        "3" {
            $sol = $num1 * $num2
            echo $sol
           
        }
        "5" {
            $num1=recogerdatos #llama a la funcion y el numero 1 se pasa al que devuelve la funcion
            $num2=recogerdatos
        }

        "6" {
            break
        }
        default {
            Write-Host "Opcion no valida. Por favor, seleccione una opción valida."
        }
    }

} while ($opcion -ne "5") #distinto de 5