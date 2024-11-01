#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ $# -eq 0 ]; then
    # Comprueba si no se proporciona ningún argumento al script.
    echo "Error: Se requiere un parámetro."
    # Imprime un mensaje de error si no se proporciona ningún argumento.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

ruta=$1
# Asigna el primer argumento proporcionado al script a la variable 'ruta'.

if [ -e "$ruta" ]; then
    # Comprueba si la ruta especificada existe.
    [ -f "$ruta" ] && echo "$ruta es un archivo."
    # Si la ruta existe y es un archivo, imprime un mensaje indicando que es un archivo.
    [ -d "$ruta" ] && echo "$ruta es un directorio."
    # Si la ruta existe y es un directorio, imprime un mensaje indicando que es un directorio.
else
    echo "$ruta no existe."
    # Si la ruta no existe, imprime un mensaje indicando que no existe.
fi
