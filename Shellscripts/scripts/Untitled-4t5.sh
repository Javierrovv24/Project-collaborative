#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ $# -eq 0 ]; then
    # Comprueba si no se proporciona ningún argumento al script.
    echo "Error: Introduce los parámetros."
    # Imprime un mensaje de error indicando que se requieren parámetros.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

for archivo in "$@"; do
    # Itera sobre cada argumento pasado al script, que se asume que son nombres de archivo.

    if [ -f "$archivo" ]; then
        # Comprueba si el archivo existe.
        echo "Mostrando el archivo '$archivo' (presiona 'q' para salir):"
        # Imprime un mensaje indicando el nombre del archivo que se mostrará y proporciona una instrucción adicional para salir de `less`.
        less "$archivo"
        # Utiliza el comando `less` para mostrar el contenido del archivo.
    else
        echo "El archivo '$archivo' no existe."
        # Si el archivo no existe, imprime un mensaje indicando que el archivo no existe.
    fi
done
