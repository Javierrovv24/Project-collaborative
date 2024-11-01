#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

for usuario in "$@"; do
    # Itera sobre cada argumento pasado al script, que se asume que son nombres de usuario.

    if id "$usuario" &>/dev/null; then
        # Verifica si el usuario existe utilizando el comando 'id'. La salida se redirige a /dev/null para evitar la salida en la consola.

        echo "El usuario $usuario existe"
        # Imprime un mensaje indicando que el usuario existe.

        carpeta_home=$(grep "^$usuario:" /etc/passwd | cut -d: -f6)
        # Utiliza 'grep' para encontrar la línea en /etc/passwd que comience con el nombre de usuario y 'cut' para extraer la sexta columna, que contiene la ruta de la carpeta home del usuario.

        rm -f "$carpeta_home"/*.bak
        # Utiliza 'rm' con la opción '-f' para eliminar los archivos con extensión .bak en la carpeta home del usuario.

        echo "Archivos .bak eliminados en la carpeta home de $usuario"
        # Imprime un mensaje indicando que los archivos .bak han sido eliminados en la carpeta home del usuario.
    else
        echo "El usuario $usuario no existe"
        # Si el usuario no existe, imprime un mensaje indicando que el usuario no existe.
    fi
done
