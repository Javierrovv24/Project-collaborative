#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

# Función para verificar si la entrada es un número
function es_numero {
    re='^[0-9]+$'
    if ! [[ $1 =~ $re ]] ; then
        return 1
    else
        return 0
    fi
}

# Solicitar al usuario que ingrese un número y verificar si es válido
while true; do
    read -p "Por favor, ingresa un número: " numero
    # Solicita al usuario que ingrese un número y lo asigna a la variable 'numero'.
    if es_numero "$numero"; then
        # Verifica si el número ingresado es válido utilizando la función 'es_numero'.
        break
        # Sale del bucle si el número ingresado es válido.
    else
        echo "Error: '$numero' no es un número válido."
        # Si el número ingresado no es válido, muestra un mensaje de error.
    fi
done

# Mostrar la tabla de multiplicar del número ingresado utilizando un bucle while
i=1
while [ $i -le 10 ]; do
    resultado=$((numero * i))
    # Calcula el resultado de la multiplicación entre el número ingresado y el valor de 'i'.
    echo "$numero x $i = $resultado"
    # Imprime la operación de multiplicación y su resultado.
    ((i++))
    # Incrementa el valor de 'i' en cada iteración del bucle.
done
