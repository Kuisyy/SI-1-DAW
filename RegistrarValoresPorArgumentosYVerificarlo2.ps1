function EsEntero($arg) {
    return [int]::TryParse($arg, [ref]$null)   #Se pone el refnull pq tryparse espera un parametro de salida pero en pws no necesitamos esto por eso le ponemos
}

$arg1 = Read-Host "Introduce un numero: "
$arg2 = Read-Host "Introduce un numero: "

if (EsEntero $arg1) {
    Write-Host "$arg1 es un entero."
} else {
    Write-Host "$arg1 no es un entero."
}

if (EsEntero $arg2) {
    Write-Host "$arg2 es un entero."
} else {
    Write-Host "$arg2 no es un entero."
}
