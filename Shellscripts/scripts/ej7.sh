#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

mkdir -p "$HOME/Mis Cosas" && echo "Carpeta 'Mis Cosas' creada o ya existente en el directorio home."
# Utiliza el comando 'mkdir' para crear la carpeta "~/Mis Cosas" en el directorio home del usuario actual. La opción '-p' asegura que se creen también los directorios padres si es necesario. El operador '&&' asegura que el siguiente comando se ejecute solo si el comando anterior (mkdir) tiene éxito. Si mkdir tiene éxito, imprime un mensaje indicando que la carpeta se ha creado correctamente o ya existía.
