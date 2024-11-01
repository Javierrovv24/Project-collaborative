#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

if [ $# -ne 2 ]; then
    # Comprueba si el número de argumentos no es igual a 2.
    echo "Error: Debes proporcionar un nombre de usuario y un nombre de grupo como parámetros."
    # Imprime un mensaje de error indicando que se necesitan dos parámetros.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

usuario="$1"
# Asigna el primer argumento proporcionado al script a la variable 'usuario'.
grupo="$2"
# Asigna el segundo argumento proporcionado al script a la variable 'grupo'.

if grep -wq "^$grupo:" /etc/group; then
    # Utiliza 'grep' para buscar el nombre del grupo en el archivo /etc/group.
    echo "El grupo $grupo existe"
    # Si el grupo existe, imprime un mensaje indicando que el grupo existe.
else
    echo "Error: El grupo $grupo no existe."
    # Si el grupo no existe, imprime un mensaje de error.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

# Verifica si el usuario existe
if id "$usuario" &>/dev/null; then
    # Utiliza el comando 'id' para verificar si el usuario existe.
    echo "El usuario $usuario existe"
    # Si el usuario existe, imprime un mensaje indicando que el usuario existe.
else
    echo "Error: El usuario $usuario no existe."
    # Si el usuario no existe, imprime un mensaje de error.
    exit 1
    # Sale del script con un código de salida 1, indicando que hubo un error.
fi

# Une al usuario al grupo
sudo usermod -aG "$grupo" "$usuario"
# Utiliza el comando 'usermod' con la opción '-aG' para agregar el usuario al grupo especificado.

echo "El usuario $usuario se ha unido al grupo $grupo correctamente."
# Imprime un mensaje indicando que el usuario se ha unido al grupo correctamente.
