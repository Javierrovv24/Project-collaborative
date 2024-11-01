#!/bin/bash
# Este es un script en bash que muestra diferentes formas de saludar al usuario.

# Apartado 1: Saludo simple al mundo
echo "Hola, mundo!"

# Apartado 2: Saludo utilizando el primer argumento proporcionado al script, si existe
if [ $# -gt 0 ]; then
    echo "Hola, $1!"  # $1 representa el primer argumento pasado al script
fi

# Apartado 3: Saludo utilizando el nombre de usuario actual
echo "Hola, $USER!"  # $USER representa el nombre de usuario actual

# Apartado 4: Saludo utilizando una variable llamada "nombre", si está definida y no está vacía
if [ -n "$nombre" ]; then  # Verifica si la variable nombre no está vacía
    echo "Hola, $nombre!"
fi

# Apartado 5: Solicita al usuario que ingrese su nombre y luego lo saluda
read -p "Por favor, introduce tu nombre: " usuario_ingresado
echo "Hola, $usuario_ingresado!"
