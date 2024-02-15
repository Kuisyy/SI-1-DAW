#Recogida de datos de entrada

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
            Write-Host "¡¡Recuerde que los digitos deben ser números enteros!!"  #En caso de que no sea valido o salte la excepcion
        }
    }while($num -isnot [int]) #El isnot hace que si ese numero no es un int vuelve a ejecutar el bucle

    return $num #Una vez el numero es un int lo devuelve
}

if ($args.Count -lt 2)
{
    Write-Host "Los argumentos introducidos son insuficientes"
    Write-Host "El número minimo de argumentos son dos"

    $num1=recogerdatos #llama a la funcion y el numero 1 se pasa al que devuelve la funcion
    $num2=recogerdatos
}

if ($args.Count -ge 2) #Si el numero de argumumentos es mayor o igual a 2.
{
    echo "Se comprobará a continuación los valores recibidos"
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