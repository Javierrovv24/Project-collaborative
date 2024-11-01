#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ $# -eq 0 ]; then
    # Comprueba si no se proporciona ningún argumento al script.
    echo "Error: Se requiere una orden como parámetro."
    # Imprime un mensaje de error si no se proporciona ningún argumento.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

case $1 in
    "crear") mkdir -p ~/BAK && echo "Carpeta BAK creada en el directorio home." ;;
    # Si el primer argumento es "crear", crea una carpeta llamada "BAK" en el directorio home del usuario.
    "borrar") rm -rf ~/BAK && echo "Contenido de la carpeta BAK borrado, si existe." ;;
    # Si el primer argumento es "borrar", borra de forma recursiva y forzada (-rf) la carpeta "BAK" del directorio home del usuario.
    *) echo "Error: Orden no reconocida. Las opciones que puedes introducir son 'crear' o 'borrar'." && exit 1 ;;
    # Si el primer argumento no coincide con "crear" ni con "borrar", muestra un mensaje de error y sale del script con un código de salida 1.
esac
