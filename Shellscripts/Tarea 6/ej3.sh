#!/bin/bash

# Función que muestra el menú de opciones
mostrar_menu() {
    clear
    echo "---------------------------------------------------------------"
    echo -e "Copias de Seguridad"
    echo "---------------------------------------------------------------"
    echo "1. Listado de copias de seguridad"
    echo "2. Hacer copia de seguridad"
    echo "3. Recuperar copia de seguridad"
    echo "4. Salir programa"
    echo "----------------------------------------------------------------"
}

# Función para listar las copias de seguridad en la carpeta BAK
listar_copias() {
    echo "Listado de copias de seguridad en la carpeta BAK:"
    ls -lh ~/BAK/*.tgz
}

# Función para hacer una copia de seguridad de la carpeta Documentos
hacer_copia() {
    fecha=$(date +"%Y-%m-%d")  # Obtiene la fecha actual
    tar cvzf ~/BAK/"$fecha".tgz ~/Documentos  # Crea un archivo comprimido con la fecha actual como nombre en la carpeta BAK
    echo "Copia de seguridad realizada con éxito."
}

# Función para recuperar la última copia de seguridad
recuperar_copia() {
    ultima_copia=$(ls -1t ~/BAK/*.tgz | head -n1)  # Obtiene el nombre del archivo de la última copia de seguridad
    tar xvfz "$ultima_copia" -C /tmp  # Descomprime la última copia de seguridad en la carpeta /tmp
    echo "Copia de seguridad recuperada en /tmp."
}

# Crea la carpeta BAK si no existe
[ ! -d ~/BAK ] && mkdir ~/BAK

# Bucle principal del programa
while true; do
    mostrar_menu  # Muestra el menú de opciones
    read -p "Seleccione una opción [1-4]: " opcion  # Solicita al usuario que seleccione una opción

    # Estructura de control de caso para manejar las opciones del menú
    case $opcion in
        1)
            listar_copias  # Llama a la función para listar las copias de seguridad
            ;;
        2)
            hacer_copia  # Llama a la función para hacer una copia de seguridad
            ;;
        3)
            recuperar_copia  # Llama a la función para recuperar la última copia de seguridad
            ;;
        4)
            echo "Saliendo del programa."  # Imprime un mensaje de salida
            exit 0  # Finaliza el script con un código de salida 0 (éxito)
            ;;
        *)
            echo "Opción no válida. Por favor, seleccione una opción del 1 al 4."  # Si el usuario elige una opción no válida, muestra un mensaje de error
            ;;
    esac

    read -n1 -r -p "Presione cualquier tecla para continuar..."  # Espera a que el usuario presione cualquier tecla para continuar
done
