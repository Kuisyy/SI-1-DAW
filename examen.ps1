param (
    [string]$archivo1,
    [string]$archivo2
)

function ObtenerPalabras($archivo) {
    $contenido = Get-Content $archivo
    $palabras = $contenido.ToLower() -split '\W+' | Where-Object { $_ -ne '' }
    return $palabras
}

Write-Host ""

$palabrasArchivo1 = ObtenerPalabras $archivo1
$palabrasArchivo2 = ObtenerPalabras $archivo2

#Indica en qué "lado" (o conjunto) del objeto de entrada se encuentra la palabra
$palabrasComunes = Compare-Object $palabrasArchivo1 $palabrasArchivo2 | Where-Object { $_.SideIndicator -eq '==' } | Select-Object -ExpandProperty InputObject    

$palabrasComunes = $palabrasComunes | Sort-Object -Unique

Write-Host "Palabras comunes encontradas:"
$palabrasComunes
