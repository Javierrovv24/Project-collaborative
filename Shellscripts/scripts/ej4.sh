#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ "$#" -eq 2 ]; then
    # Comprueba si el número de parámetros pasados al script es igual a 2.
    echo "Ok"
    # Imprime "Ok" si se proporcionan exactamente 2 parámetros.
    exit 0
    # Sale del script con un código de salida 0, indicando que todo está bien.
else
    echo "Error , Se necesitan 2 parámetros mínimo"
    # Imprime un mensaje de error si no se proporcionan exactamente 2 parámetros.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi
