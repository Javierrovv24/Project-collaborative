#!/bin/bash

# Definición de la función que muestra el menú de opciones
mostrar_menu() {
    clear  # Limpia la pantalla
    echo "---------------------------------------------------------------"
    echo "Usuarios del equipo"
    echo "---------------------------------------------------------------"
    echo "1. Mostrar los usuarios del equipo"  # Opción para mostrar los usuarios del sistema
    echo "2. Crear un nuevo usuario"  # Opción para crear un nuevo usuario
    echo "3. Eliminar un usuario"  # Opción para eliminar un usuario existente
    echo "4. Eliminar un home"  # Opción para eliminar el directorio home de un usuario
    echo "5. Salir programa"  # Opción para salir del programa
    echo "----------------------------------------------------------------"
}

# Función para eliminar el directorio home de un usuario
eliminar_home() {
    read -p "Ingrese el nombre de usuario cuyo home desea eliminar: " username  # Solicita al usuario que ingrese el nombre de usuario
    if [ -d "/home/$username" ]; then  # Verifica si el directorio home del usuario existe
        rm -r "/home/$username"  # Elimina el directorio home del usuario
        echo "El home de $username ha sido eliminado."  # Imprime un mensaje de éxito
    else
        echo "El home de $username no existe."  # Si el directorio home no existe, muestra un mensaje de error
    fi
}

# Bucle principal del programa
while true; do
    mostrar_menu  # Muestra el menú de opciones
    read -p "Seleccione una opción [1-5]: " opcion  # Solicita al usuario que seleccione una opción

    # Estructura de control de caso para manejar las opciones del menú
    case $opcion in
        1)
            echo "Usuarios reales del equipo:"  # Muestra un encabezado
            grep '/home/' /etc/passwd | cut -d: -f1  # Utiliza grep y cut para mostrar los usuarios reales del sistema
            ;;
        2)
            read -p "Ingrese el nombre del nuevo usuario: " new_username  # Solicita al usuario que ingrese el nombre del nuevo usuario
            adduser "$new_username"  # Crea un nuevo usuario utilizando el comando adduser
            ;;
        3)
            read -p "Ingrese el nombre del usuario a eliminar: " del_username  # Solicita al usuario que ingrese el nombre del usuario a eliminar
            if id "$del_username" &>/dev/null; then  # Verifica si el usuario existe
                userdel "$del_username"  # Elimina el usuario utilizando el comando userdel
                read -p "¿Desea eliminar el home de $del_username? (s/n): " delete_home  # Pregunta al usuario si desea eliminar el directorio home
                if [ "$delete_home" = "s" ]; then  # Verifica la respuesta del usuario
                    eliminar_home "$del_username"  # Llama a la función eliminar_home para eliminar el directorio home
                fi
            else
                echo "El usuario $del_username no existe."  # Si el usuario no existe, muestra un mensaje de error
            fi
            ;;
        4)
            eliminar_home  # Llama a la función eliminar_home para eliminar el directorio home
            ;;
        5)
            echo "Saliendo del programa."  # Imprime un mensaje de salida
            exit 0  # Finaliza el script con un código de salida 0 (éxito)
            ;;
        *)
            echo "Opción no válida. Por favor, seleccione una opción del 1 al 5."  # Si el usuario elige una opción inválida, muestra un mensaje de error
            ;;
    esac

    read -n1 -r -p "Presione cualquier tecla para continuar..."  # Espera a que el usuario presione cualquier tecla para continuar
done
