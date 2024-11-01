#!/bin/bash

# Verifica si se proporcionó el nombre de usuario como argumento
if [ $# -eq 0 ]; then
    echo "Error: Debes proporcionar el nombre de un usuario como parámetro."
    exit 1
fi

# Verifica si el usuario pasado como parámetro existe
if ! id "$1" &>/dev/null; then
    echo "Error: El usuario '$1' no existe."
    exit 1
fi

# Inicializa contadores para contar imágenes jpg, documentos y archivos de texto
jpg_count=0
doc_count=0
txt_count=0

# Ruta de la carpeta home del usuario
home_folder=$(getent passwd "$1" | cut -d: -f6)

# Itera sobre los archivos en la carpeta home del usuario
for file in "$home_folder"/*; do
    # Verifica si el archivo es un archivo regular
    if [ -f "$file" ]; then
        # Verifica la extensión del archivo y aumenta el contador correspondiente
        if [[ "$file" == *.jpg ]]; then
            ((jpg_count++))
        elif [[ "$file" == *.doc ]]; then
            ((doc_count++))
        elif [[ "$file" == *.txt ]]; then
            ((txt_count++))
        fi
    fi
done

# Imprime los resultados
echo "Número de archivos jpg: $jpg_count"
echo "Número de archivos doc: $doc_count"
echo "Número de archivos txt: $txt_count"
