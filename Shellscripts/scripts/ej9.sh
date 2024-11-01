#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

carpeta=${1:-""}
# Asigna el valor del primer argumento proporcionado al script a la variable 'carpeta'. Si no se proporciona ningún argumento, se asigna una cadena vacía.

[ -z "$carpeta" ] && read -p "Introduce el nombre de la carpeta: " carpeta
# Verifica si la variable 'carpeta' está vacía. Si está vacía, solicita al usuario que introduzca el nombre de la carpeta y lo asigna a 'carpeta'.

if [ -d "$carpeta" ] && [ -w "$carpeta" ]; then
    # Comprueba si la carpeta existe y tiene permisos de escritura.
    echo "La carpeta $carpeta existe y tiene permisos de escritura."
    # Si se cumplen ambas condiciones, imprime un mensaje indicando que la carpeta existe y tiene permisos de escritura.
    echo "Bienvenido" > "$carpeta/hola.txt" && echo "Se ha creado hola.txt en $carpeta."
    # Crea un archivo llamado 'hola.txt' en la carpeta especificada y muestra un mensaje si se crea correctamente.
else
    echo "Error: Verifica que la carpeta existe y tienes permisos de escritura."
    # Si la carpeta no existe o no tiene permisos de escritura, imprime un mensaje de error.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi
