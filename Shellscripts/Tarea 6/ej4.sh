#!/bin/bash

# Definición de la función que muestra el menú de opciones
mostrar_menu() {
    clear  # Limpia la pantalla
    echo "---------------------------------------------------------------"
    echo -e "Calculadora"  # Título del menú
    echo "---------------------------------------------------------------"
    echo "1. Suma"  # Opción para realizar una suma
    echo "2. Resta"  # Opción para realizar una resta
    echo "3. División"  # Opción para realizar una división
    echo "4. Multiplicación"  # Opción para realizar una multiplicación
    echo "5. Salir programa"  # Opción para salir del programa
    echo "----------------------------------------------------------------"
}

# Bucle principal del programa
while true; do
    mostrar_menu  # Muestra el menú de opciones
    read -p "Seleccione una opción [1-5]: " opcion  # Solicita al usuario que seleccione una opción

    # Estructura de control de caso para manejar las opciones del menú
    case $opcion in
        1|2|3|4)  # Si la opción es una de las operaciones (suma, resta, multiplicación, división)
            read -p "Ingrese el primer número: " num1  # Solicita al usuario que ingrese el primer número
            read -p "Ingrese el segundo número: " num2  # Solicita al usuario que ingrese el segundo número
            # Verifica si los números ingresados son válidos (números decimales o enteros)
            if [[ ! $num1 =~ ^[+-]?[0-9]*[.]?[0-9]+$ || ! $num2 =~ ^[+-]?[0-9]*[.]?[0-9]+$ ]]; then
                echo "Por favor, ingrese números válidos."
            else
                case $opcion in  # Según la opción elegida, establece la operación correspondiente
                    1) operacion='+' ;;  # Suma
                    2) operacion='-' ;;  # Resta
                    3) operacion='/' ;;  # División
                    4) operacion='*' ;;  # Multiplicación
                esac
                echo "El resultado es: $(bc <<< "$num1 $operacion $num2")"  # Realiza la operación utilizando 'bc' y muestra el resultado
            fi
            ;;
        5)  # Si la opción es salir del programa
            echo "Saliendo del programa."  # Muestra un mensaje de salida
            exit 0  # Finaliza el script con un código de salida 0 (éxito)
            ;;
        *)  # Si la opción no es válida
            echo "Opción no válida. Por favor, seleccione una opción del 1 al 5."  # Muestra un mensaje de error
            ;;
    esac

    read -n1 -r -p "Presione cualquier tecla para continuar..."  # Espera a que el usuario presione cualquier tecla para continuar
done
