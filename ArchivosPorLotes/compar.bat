@echo off
if "%~3"=="" (
    echo Uso: compar.bat archivo1 archivo2 archivo_salida
    exit /b 1
)

if not exist "%~1" (
    echo El archivo %1 no existe.
    exit /b 1
)
if not exist "%~2" (
    echo El archivo %2 no existe.
    exit /b 1
)

fc "%~1" "%~2" > "%~3"

if errorlevel 1 (
    echo Se encontraron diferencias entre %1 y %2.
) else (
    echo Los archivos %1 y %2 son idénticos.
)

exit /b 0
