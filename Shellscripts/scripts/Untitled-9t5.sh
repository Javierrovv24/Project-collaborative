#!/bin/bash

# Función para mostrar el menú
function mostrar_menu {
    echo "Agenda - Menú"
    echo "1. Listado de la agenda"
    echo "2. Buscar contacto"
    echo "3. Nuevo contacto"
    echo "4. Borrar contacto"
    echo "0. Salir"
}

# Función para listar contactos
function listar_agenda {
    echo "Has seleccionado 'Listado de la agenda'"
    # Aquí puedes agregar la lógica para listar los contactos de la agenda
}

# Función para buscar un contacto
function buscar_contacto {
    echo "Has seleccionado 'Buscar contacto'"
    # Aquí puedes agregar la lógica para buscar un contacto en la agenda
}

# Función para agregar un nuevo contacto
function nuevo_contacto {
    echo "Has seleccionado 'Nuevo contacto'"
    # Aquí puedes agregar la lógica para agregar un nuevo contacto a la agenda
}

# Función para borrar un contacto
function borrar_contacto {
    echo "Has seleccionado 'Borrar contacto'"
    # Aquí puedes agregar la lógica para borrar un contacto de la agenda
}

# Bucle principal del programa
while true; do
    mostrar_menu
    read -p "Selecciona una opción: " opcion
    case $opcion in
        1)
            listar_agenda
            ;;
        2)
            buscar_contacto
            ;;
        3)
            nuevo_contacto
            ;;
        4)
            borrar_contacto
            ;;
        0)
            echo "Saliendo del programa."
            exit 0
            ;;
        *)
            echo "Opción no válida. Por favor, selecciona una opción válida."
            ;;
    esac
done
