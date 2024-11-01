#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ "$(id -u)" -eq 0 ]; then
    # Comprueba si el ID de usuario (UID) actual es igual a 0, que es el ID de root.
    echo "Bienvenido, superusuario!"
    # Imprime un mensaje de bienvenida si el usuario es root.
    exit 0
    # Sale del script con un código de salida 0, indicando que todo está bien.
else
    echo "Este script solo puede ser ejecutado por el usuario root."
    # Imprime un mensaje de error si el usuario no es root.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi
