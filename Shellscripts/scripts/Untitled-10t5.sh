#!/bin/bash

# Inicializa el contador de intentos
intentos=0

# Bucle para solicitar la contraseña al usuario
while true; do
    # Solicita al usuario que introduzca su contraseña
    read -p "Introduzca su contraseña: " password

    # Solicita al usuario que repita la contraseña
    read -p "Repita de nuevo su contraseña: " password_confirmacion

    # Incrementa el contador de intentos
    ((intentos++))

    # Verifica si las contraseñas coinciden
    if [ "$password" == "$password_confirmacion" ]; then
        # Muestra un mensaje de bienvenida y el número de intentos
        echo "¡Bienvenido! Ha necesitado $intentos intentos para acceder."
        break
    else
        # Muestra un mensaje de error si las contraseñas no coinciden
        echo "El password no coincide, inténtelo de nuevo."
    fi
done
