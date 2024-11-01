#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ $# -eq 0 ]; then
    # Comprueba si no se proporciona ningún argumento al script.
    echo "Error: Introduce la ruta de la carpeta."
    # Imprime un mensaje de error indicando que se requiere la ruta de la carpeta.
    echo "Uso: $0 carpeta1 [carpeta2 carpeta3 ...]"
    # Imprime el uso del script, mostrando cómo deben pasarse los argumentos.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

for carpeta in "$@"; do
    # Itera sobre cada argumento pasado al script, que se asume que son nombres de carpeta.

    if [ ! -d "$carpeta" ]; then
        # Comprueba si la carpeta no existe.
        echo "Error: La carpeta '$carpeta' no existe."
        # Imprime un mensaje de error indicando que la carpeta no existe.
        continue
        # Salta a la siguiente iteración del bucle.
    fi

    archivos_vacios=$(find "$carpeta" -type f -empty)
    # Utiliza el comando 'find' para buscar archivos vacíos dentro de la carpeta especificada.

    if [ -n "$archivos_vacios" ]; then
        # Comprueba si se encontraron archivos vacíos.
        echo "Archivos vacíos encontrados en la carpeta '$carpeta':"
        # Imprime un mensaje indicando que se encontraron archivos vacíos en la carpeta.
        echo "$archivos_vacios"
        # Muestra la lista de archivos vacíos encontrados.
    else
        echo "No se encontraron archivos vacíos en la carpeta '$carpeta'."
        # Si no se encuentran archivos vacíos, imprime un mensaje indicando que no se encontraron archivos vacíos en la carpeta.
    fi
done
