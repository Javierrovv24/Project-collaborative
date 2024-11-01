#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ "$(id -u)" -ne 0 ]; then
    # Comprueba si el usuario actual no es root (ID de usuario no es 0).
    echo "Solo root puede ejecutar esto."
    # Imprime un mensaje indicando que solo root puede ejecutar este script.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

if [ $# -eq 0 ]; then
    # Comprueba si no se proporciona ningún argumento al script.
    read -p " nombre del archivo? " filename
    # Solicita al usuario que introduzca el nombre del archivo si no se proporciona como argumento.
else
    filename="$1"
    # Asigna el primer argumento proporcionado al script a la variable 'filename'.
fi

if [ ! -f "$filename" ]; then
    # Comprueba si el archivo especificado no existe.
    echo "El archivo '$filename' no existe."
    # Imprime un mensaje de error si el archivo no existe.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

for folder in /home/*; do
    # Itera sobre cada carpeta dentro del directorio /home.
    if [ -d "$folder" ]; then
        # Comprueba si la iteración actual es un directorio.
        cp "$filename" "$folder/" || echo "No se pudo copiar el archivo en '$folder'."
        # Copia el archivo en la carpeta actual. Si la copia falla, imprime un mensaje de error.
    fi
done

echo "El archivo '$filename' se ha copiado en todas las carpetas de /home."
# Imprime un mensaje indicando que el archivo se ha copiado en todas las carpetas de /home.
