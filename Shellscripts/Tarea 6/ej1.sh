#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

menu() {
    while true; do
        clear
        # Limpia la pantalla.
        echo "---------------------------------------------------------------"
        echo "Apagado programado del PC"
        echo "---------------------------------------------------------------"
        echo "1. Apagar ahora"
        echo "2. Programar el apagado"
        echo "3. Reiniciar ahora"
        echo "4. Programar reinicio"
        echo "5. Cancelar el apagado o reinicio"
        echo "6. Salir programa"
        echo "----------------------------------------------------------------"

        read -p "Seleccione una opción [1-6]: " opcion
        # Solicita al usuario que seleccione una opción del menú.

        case $opcion in
            1) apagar_ahora ;;  # Llama a la función para apagar el sistema ahora.
            2) programar_apagado ;;  # Llama a la función para programar el apagado.
            3) reiniciar_ahora ;;  # Llama a la función para reiniciar el sistema ahora.
            4) programar_reinicio ;;  # Llama a la función para programar el reinicio.
            5) cancelar_apagado_reinicio ;;  # Llama a la función para cancelar el apagado o reinicio programado.
            6) exit ;;  # Sale del programa.
            *) echo "Opción inválida. Por favor, seleccione una opción válida." ;;  # Maneja opciones no válidas.
        esac
    done
}

solicitar_minutos() {
    while true; do
        read -p "Ingrese la cantidad de minutos: " minutos
        # Solicita al usuario que ingrese la cantidad de minutos.
        if [[ $minutos =~ ^[0-9]+$ ]] && [ $minutos -ge 0 ]; then
            break
        else
            echo "Error: Debe ingresar un número positivo de minutos."
            # Muestra un mensaje de error si la entrada no es un número positivo.
        fi
    done
}

apagar_ahora() {
    echo "Apagando el equipo ahora..."
    # Muestra un mensaje indicando que el equipo se está apagando ahora.
    sleep 1
    # Espera 1 segundo.
    shutdown -h now
    # Apaga el equipo ahora.
}

programar_apagado() {
    solicitar_minutos
    # Llama a la función para solicitar la cantidad de minutos.
    echo "Apagando el equipo en $minutos minutos..."
    # Muestra un mensaje indicando que el equipo se apagará en ciertos minutos.
    sleep 1
    # Espera 1 segundo.
    shutdown -h +$minutos
    # Programa el apagado del equipo después de ciertos minutos.
    echo "Apagado programado correctamente."
    # Muestra un mensaje indicando que el apagado se ha programado correctamente.
}

reiniciar_ahora() {
    echo "Reiniciando el equipo ahora..."
    # Muestra un mensaje indicando que el equipo se está reiniciando ahora.
    sleep 1
    # Espera 1 segundo.
    shutdown -r now
    # Reinicia el equipo ahora.
}

programar_reinicio() {
    solicitar_minutos
    # Llama a la función para solicitar la cantidad de minutos.
    echo "Reiniciando el equipo en $minutos minutos..."
    # Muestra un mensaje indicando que el equipo se reiniciará en ciertos minutos.
    sleep 1
    # Espera 1 segundo.
    shutdown -r +$minutos
    # Programa el reinicio del equipo después de ciertos minutos.
    echo "Reinicio programado correctamente."
    # Muestra un mensaje indicando que el reinicio se ha programado correctamente.
}

cancelar_apagado_reinicio() {
    echo "Cancelando el apagado o reinicio..."
    # Muestra un mensaje indicando que se está cancelando el apagado o reinicio.
    shutdown -c
    # Cancela el apagado o reinicio programado.
    echo "Apagado o reinicio cancelado."
    # Muestra un mensaje indicando que el apagado o reinicio se ha cancelado.
}

menu
# Llama a la función de menú para comenzar la ejecución del programa.
