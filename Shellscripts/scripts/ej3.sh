#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ "$#" -lt 3 ]; then
    # Comprueba si el número de parámetros pasados al script es menor que 3.
    echo "Error: Se requieren al menos 3 parámetros."
    # Imprime un mensaje de error si no se proporcionan al menos 3 parámetros.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

echo "Número de parámetros: $#"
# Imprime el número de parámetros pasados al script.

echo "Parámetros: $@"
# Imprime todos los parámetros pasados al script.
exit 0
# Sale del script con un código de salida 0, indicando que todo está bien.
