#/bin/bash

# Variables en bash

# Una de las buenas prácticas que debemos aprender a dominar en bash es el uso de las variables.

# Mala práctica
cp /ruta/de/origen /ruta/de/destino 2> /dev/null

cp /ruta/de/origen/ejemplo2 /ruta/de/destino/ejemplo2 2> /dev/null

#Buena práctica
RUTA_ORIGEN=/ruta/de/origen
RUTA_DESTINO=/ruta/de/destino

cp $RUTA_ORIGEN $RUTA_DESTINO 2> /dev/null

cp "$RUTA_ORIGEN/subruta/ejemplo" "$RUTA_DESTINO/subruta/ejemplo" 2> /dev/null

# Declaración variable

NOMBRE=samuel
APELLIDO="berrus corvo"

echo "Hola $NOMBRE $APELLIDO"