#!/bin/bash

# Verifica si el usuario que ejecuta el script es root
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script debe ser ejecutado por el usuario root."
    exit 1
fi

# Obtiene la lista de usuarios que coinciden con el patrón "alumno*" del archivo /etc/passwd
usuarios_alumno=$(grep "^alumno" /etc/passwd | cut -d: -f1)

# Verifica si hay usuarios alumno para eliminar
if [ -z "$usuarios_alumno" ]; then
    echo "No se encontraron usuarios con el patrón 'alumno*' en el sistema."
    exit 0
fi

# Elimina los usuarios encontrados
for usuario in $usuarios_alumno; do
    echo "Eliminando usuario $usuario..."
    userdel -r "$usuario"
    echo "Usuario $usuario eliminado."
done

echo "Todos los usuarios con el patrón 'alumno*' han sido eliminados."
