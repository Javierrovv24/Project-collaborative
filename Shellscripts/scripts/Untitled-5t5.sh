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

# Bucle para solicitar al usuario que ingrese un número y verificar si es válido
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

echo "Tabla de multiplicar del número $numero:"
# Imprime un encabezado indicando el número para el cual se está mostrando la tabla de multiplicar.

# Bucle para mostrar la tabla de multiplicar del número ingresado
for (( i = 1; i <= 10; i++ )); do
    # Utiliza un bucle for para generar los números del 1 al 10.
    echo "$numero x $i = $((numero * i))"
    # Muestra cada línea de la tabla de multiplicar, multiplicando el número ingresado por el valor actual de 'i'.
done
