#!/bin/bash

hora_actual=$(date +%H)

if [ "$hora_actual" -ge 14 ] && [ "$hora_actual" -lt 16 ]; then
    echo "Hora de comer"
else
    echo "Sigue estudiando"
fi
#!/bin/bash
# Especifica que el script debe ser interpretado por el shell bash.

hora_actual=$(date +%H)
# Obtiene la hora actual y la almacena en la variable 'hora_actual'. El formato %H indica que solo se obtiene la hora en formato de 24 horas.

if [ "$hora_actual" -ge 14 ] && [ "$hora_actual" -lt 16 ]; then
    # Comprueba si la hora actual es mayor o igual a 14 (2:00 PM) y menor que 16 (4:00 PM).
    echo "Hora de comer"
    # Si se cumple la condición, imprime "Hora de comer".
else
    echo "Sigue estudiando"
    # Si la condición no se cumple, imprime "Sigue estudiando".
fi
