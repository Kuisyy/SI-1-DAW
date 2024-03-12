function escribirArchivo{
    param(
        $ruta, $texto, $sobreEscribir
    )
    $retorno = "-1"
    
    if(-not(Test-Path $ruta)){
        Set-Content -Path $ruta -Value $texto
    }
    else{
        
        if ($sobreEscribir -ieq "S") {
            Set-Content -Path $ruta -Value $texto
        }
        else {
            Add-Content -Path $ruta -Value $texto  #o $archivo += "mete una linea y se agrega al archivo"
        }
        $retorno = "1"
        
    }
    return $retorno
}
escribirArchivo $args[0] $args[1] $args[2]
