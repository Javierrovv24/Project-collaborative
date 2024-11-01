#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

read -p "Introduce tu nombre de usuario: " usuario
# Solicita al usuario que ingrese su nombre de usuario y almacena la entrada en la variable 'usuario'.

if [ "$usuario" == "pepe" ]; then
    # Comprueba si el nombre de usuario ingresado es "pepe".
    read -p "Introduce tu contraseña: " contrasena
    # Solicita al usuario que ingrese su contraseña y almacena la entrada en la variable 'contrasena'.

    if [ "$contrasena" == "qwerty" ]; then
        # Comprueba si la contraseña ingresada es "qwerty".
        echo "¡Bienvenido, pepe!"
        # Imprime un mensaje de bienvenida si el nombre de usuario y la contraseña son correctos.
        echo "Fecha de hoy: $(date)"
        # Imprime la fecha y hora actuales utilizando el comando 'date'.
    else
        echo "Error: Contraseña incorrecta."
        # Imprime un mensaje de error si la contraseña no es correcta.
        exit 1
        # Sale del script con un código de salida 1, indicando que hubo un error.
    fi
else
    echo "Error: Usuario no reconocido."
    # Imprime un mensaje de error si el nombre de usuario no es reconocido.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi
