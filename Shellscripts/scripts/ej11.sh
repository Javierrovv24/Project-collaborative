#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ $# -eq 0 ]; then
    # Comprueba si no se proporciona ningún argumento al script.
    echo "Error: Se requiere un nombre de archivo como parámetro."
    # Imprime un mensaje de error si no se proporciona ningún argumento.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

archivo=$1
# Asigna el primer argumento proporcionado al script a la variable 'archivo'.

if [ -e "$archivo" ]; then
    # Comprueba si el archivo especificado existe.
    echo "$archivo existe."
    # Imprime un mensaje indicando que el archivo existe.

    [ -r "$archivo" ] && echo "$archivo es legible (tiene permiso de lectura)."
    # Si el archivo es legible, imprime un mensaje indicando que tiene permiso de lectura.
    [ -w "$archivo" ] && echo "$archivo es modificable (tiene permiso de escritura)."
    # Si el archivo es modificable, imprime un mensaje indicando que tiene permiso de escritura.
    [ -x "$archivo" ] && echo "$archivo es ejecutable (tiene permiso de ejecución)."
    # Si el archivo es ejecutable, imprime un mensaje indicando que tiene permiso de ejecución.
else
    echo "Error: El archivo $archivo no existe."
    # Si el archivo no existe, imprime un mensaje de error.
    exit 2
    # Sale del script con un código de salida 2, indicando que hubo un error.
fi
